Docker File for ehForwarderBot
===

## Set the data folder
set the env of `EFB_DATA_PATH`, default value: `/data`

## Set the proxy
set the env of `HTTPS_PROXY`

## Configuration

- configure file tree in `/data/[USER]` folder:

```
profiles
└── default
    ├── blueset.telegram
    │   └── config.yaml
    ├── blueset.wechat
    └── config.yaml

```

- profiles/default/config.yaml

```yaml
master_channel: blueset.telegram
slave_channels:
  - blueset.wechat
```

- profiles/default/blueset.telegram/config.yaml

```yaml
##################
# Required items #
##################
# You are required to fill the option below,
# or this channel will not work.

# Telegram bot token.
# This is the token you obtained from BotFather
token: "123456789:ABCD_1-1A2BASDFA_ASFASDFASDFASDFASF"

# List of Telegram User IDs of admins
# ETM will only process messages and commands from users
# listed below. This ID can be obtained from various ways
# on Telegram.
admins:
- 1234567

##################
# Optional items #
##################
# The following options are optional. Lack of this section
# will only affect an additional part of functionality of
# this channel.

# API tokens required for speech recognition
speech_api:
    # Microsoft (Bing) speech recognition token
    # API key can be obtained from
    # https://azure.microsoft.com/en-us/try/cognitive-services/
    bing: "asdsfasdfasdfasdfasfdasfdasdfasd"
    # Baidu speech recognition token
    # API key can be obtained from
    # http://yuyin.baidu.com/
    baidu:
        app_id: 12345678
        api_key: "asdasdfasfdasdfasdfasdfa"
        secret_key: "123asdfasdfasdfasfasfdafasfdasfa"
```
