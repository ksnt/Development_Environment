#!/bin/sh
/home/ksn/.gnome2/gedit/tools/platex-utf8.sh $GEDIT_CURRENT_DOCUMENT_NAME
dvipdfmx `echo $GEDIT_CURRENT_DOCUMENT_NAME | sed 's/tex$/dvi/'`
