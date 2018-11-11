## Exslack

A command-line interface tool to interact with [Slack's (RTM) API](https://api.slack.com/rtm).

#### For developing things

Prerequisites:

```sh
# macOS
brew install elixir

# other OS
# visit https://elixir-lang.org/install.html#distributions
```

`git` things:

```sh
git clone https://github.com/megalithic/exslack.git
```

Install deps and build:

```sh
mix deps.get
mix escript.build
chmod +x build/exslack
```

Tests:

```sh
mix tests
```

#### For using things

Grab the prebuilt binary if you don't want to build it yourself:

```sh
curl -OL https://raw.githubusercontent.com/megalithic/exslack/master/build/exslack
```

Execute commands:

```sh
exslack <command> <params>
```

##### Commands:

```sh
login   Login with a legacy or app token
status  Set a fancy status message
away    Toggle your "away" status
dnd     Toggle yourself as do-not-disturb
```
