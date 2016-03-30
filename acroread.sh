#!/bin/sh
acroread `echo $GEDIT_CURRENT_DOCUMENT_NAME | sed 's/tex$/pdf/'
