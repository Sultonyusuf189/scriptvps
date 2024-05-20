#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�xO  �_� ��%�*����Psot	!�P4�mMd���20=CD     d���        �H��2z�S4�M4�4ɠ  �MJ)�=I鴓��6H�j4����@�<����,���~^㔬i$(ƃ�ã�h��M�g)��0�chD�@�Fok0 M0~ @���y�     �g�t�%a  W$�1<��� �"G�i��`6��44�#�*v�QG�n�@Z!��$@@!��D/��|�Z��9$g)������
���m�F���H��� Ԯ
BBBBBBBBBBBX#B�R�0�I					�#B�5s��~��M�;�50?��%��5�#¥���߷��FÙ�3��;��!'L$9ۀZ/�"=�I%�<6��������y��Z��ٵ��r��ײX�
Mԅ�N8��-�@��ct�F�]�";�+$�I&�ϼG�/�G�G^�/NI	 s�р�n��#���;�Lj܇Ab�	��6bG��L�u�P���[��]cw�ҝx� �ɷH!Z�"�F��s��w�HH\�F�B4���u�E��Q�F�s6:�k�yaukC3�[��iO��u:s���PFgr�5�7 4��Z�\e	@�lQ�Ր�D4����,��;^!�����ͺ�)Q�o){dC��������F�
5�I&OB�/$�@����;���'I�#@GS}I�I$�M�9�������Z���.�p�!�8�