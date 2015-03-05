# $FreeBSD: src/share/skel/dot.profile,v 1.19 1999/08/28 00:21:53 peter Exp $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# remove /usr/games and /usr/X11R6/bin if you want
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/bin:$HOME/bin; export PATH

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
TERM=${TERM:-cons25}
export TERM

BLOCKSIZE=K;    export BLOCKSIZE
EDITOR=ee;     export EDITOR
PAGER=more;     export PAGER
umask 022
set -E
