#!/bin/sh
xdvi `echo $GEDIT_CURRENT_DOCUMENT_NAME | sed 's/tex$/dvi/'`
