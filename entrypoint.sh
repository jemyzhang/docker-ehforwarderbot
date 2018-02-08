#!/bin/sh

PARAMS=

if [ -n "$EFB_PROFILE" ]; then
  PARAMS="$PARAMS -p $EFB_PROFILE"
fi

PARAMS="$PARAMS $EFB_PARAMS"

if [ x"$EFB_AUTOUPDATE"x = x"true"x ]; then
  pip3 freeze > /tmp/requirements.txt
  pip3 install -r /tmp/requirements.txt --upgrade
fi

eval "ehforwarderbot $PARAMS"
