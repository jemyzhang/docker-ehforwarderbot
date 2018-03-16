#!/bin/sh

PARAMS=

if [ -n "$EFB_PROFILE" ]; then
  PARAMS="$PARAMS -p $EFB_PROFILE"
fi

PARAMS="$PARAMS $EFB_PARAMS"

eval "ehforwarderbot $PARAMS"
