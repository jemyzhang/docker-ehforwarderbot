#!/bin/sh

PARAMS=

if [ -n "$EFB_PROFILE" ]; then
  PARAMS="$PARAMS -p $EFB_PROFILE"
fi

PARAMS="$PARAMS $EFB_PARAMS"

if [ x"$EFB_AUTOUPDATE"x = x"true"x ]; then
  pip3 install ehforwarderbot efb-telegram-master efb-wechat-slave --upgrade
fi

eval "ehforwarderbot $PARAMS"
