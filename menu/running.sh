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
BZh91AY&SY�f� [_�E�}���>������@D@ P흋�X�	$Q�f�@h�@�df����M h �E<F��P���i� �@  Ĉ��z������� 4  h2 sLFFM2hCFC&@  ��#@�)
a�~�)?L��1��0��hP�� HR�=�9��'�`(���;_�A���}�]n�G<����.�\��	�K�\��\w�艱�$�B�:4 y�D��bM{y	���f�v�)��B.�H^�Ɲ�NO�*G�^�C;�����r�n܊a�V�5$g0����4�!�#ta�«���d�I�@��Y�bg�I�2�af��O*�9$�s� t�U�pQQb20
�A�=SP�;��+��e*�_�[��d�tgJ�5�� ڴPΡ>d�8#�\V���)-V��H�W�E$��E'�7��ޗ�)�Di�Jz�Y��k ��n���4�
��w��"dZ{�b�䁒=�U�J��53�%%��q�g�@�D1h�k���e���^<�ˬЦb�4�ky�a�P�2�I���� ���eD��056p{��4 �8�C��6�2����ڝ��`Y��
�v�#Rq٥&�k����;�$0P�B!؛{nx���o�	��S�t�r+Q�Tu'����#SK*-s�c������nnr~��!�e� q"t-fI<<�&j�vE�s���P��˱CF�����0 �:��4����VH��P�'N׃Ȓ��ț2+��&\dV�0�"�//�v��+��]E��)�G�XH��y�+LX��r;b�;��ނ��k	3]�eudQ��u4Z�S�V
��� x�/���%iI7���f�Q�Hr���M偨�\+]s'�Q�����H�I$�I$�I$��D',fB��/&�uL'6����o-?�P����܅���_x3�fs	�D��^�a�	of��v��%Y����G����\����L��"��"�.��K`E~  ;�w��r?�(�`)\u�&X���"�(Hh�3_�