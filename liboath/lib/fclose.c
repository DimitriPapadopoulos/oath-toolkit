/* fclose replacement.
   Copyright (C) 2008-2011 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Lesser General Public License as published by
   the Free Software Foundation; either version 2.1 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>

/* Specification.  */
#include <stdio.h>

#include <errno.h>
#include <unistd.h>

#include "freading.h"

/* Override fclose() to call the overridden fflush() or close().  */

int
rpl_fclose (FILE *fp)
#undef fclose
{
  int saved_errno = 0;
  int fd;

  /* Don't change behavior on memstreams.  */
  fd = fileno (fp);
  if (fd < 0)
    return fclose (fp);

  /* We only need to flush the file if it is not reading or if it is
     seekable.  This only guarantees the file position of input files
     if the fflush module is also in use.  */
  if ((!freading (fp) || lseek (fileno (fp), 0, SEEK_CUR) != -1)
      && fflush (fp))
    saved_errno = errno;

  if (close (fd) < 0 && saved_errno == 0)
    saved_errno = errno;

  fclose (fp); /* will fail with errno = EBADF */

  if (saved_errno != 0)
    {
      errno = saved_errno;
      return EOF;
    }
  return 0;
}
