# Exslack

### Command-line interface tool to interact with [Slack's (RTM) WSS API](https://api.slack.com/rtm).

#### Dev things:

Install deps and build:

```sh
mix deps.get
mix escript.build
chmod +x exslack
```

Tests:

```sh
mix tests
```

#### Use the thing:

```sh
exslack
```

##### Options:

```sh
login   Login with a legacy or app token
status  Set a fancy status message
away    Toggle your "away" status
dnd     Toggle yourself as do-not-disturb
```
