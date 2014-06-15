# trim

## Preface

This is small script that helps using of `fstrim` utility (http://man7.org/linux/man-pages/man8/fstrim.8.html). According to recommendations - it's better to run `fstrim` on your system start to utilize using of your SSD. In Ubuntu distros it's putting command `fstrim /` into your `/etc/rc.local`.

This method worked Ok, but I want to control results of utility working. `fstrim / -v` helps, but it's returns results like `/: 194633728 bytes were trimmed` so very uninformative due to raw bytes count.

This script is putting output of `fstrim` to the `/var/log/trim.log` with human-readable size (simple convertation to Mb).

## How to use

Copy `trim.sh` to your `/usr/bin` directory (or any you think better). Rename if it's needed.

Put `/usr/bin/trim.sh &&` into your `/etc/rc.local` before `exit 0` line. (`/etc/rc.local` used in Ubuntu-like dsitro. In different Linux distro it could be different files).
