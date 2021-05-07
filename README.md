# web3j test app

## gradle

$ gradle tasks

$ gradle assemble

## web3j-cli

[web3j/web3j-cli](https://github.com/web3j/web3j-cli)

``` plain
# create the project "Web3App"
$ web3j new helloworld

# Downloading and installing it to ~/.web3j/solc/0.5.4
# https://ethereum.stackexchange.com/questions/84717/how-to-install-solc-of-a-specific-version
$ sudo add-apt-repository ppa:ethereum/ethereum
$ sudo apt-get update
$ sudo apt-get install solc
# $ Or
# $ sudo snap install solc
$ solc --version
# docker pull ethereum/solc:0.5.4
# https://github.com/ethereum/solidity/releases/tag/v0.5.4
# solc-static-linux

# import solidity
# web3j import -s <path to solidity sources> [-o <path>|-n <project name>|-p <package name>] -t
# $ web3j import -s 
$ web3j import -s ../tenx-token/contracts/
Error: Source "***" not found: File outside of allowed directories.
# https://github.com/ethereum/solidity/issues/2742

```

v1.4.1

## web3j

``` plain
# local dev

# https://github.com/trufflesuite/ganache-cli
# personal blockchain for Ethereum development
$ sudo npm install ganache-cli -g

# Start ganache
$ ganache-cli
Ganache CLI v***
Available Accounts
==================
***
Private Keys
==================
*** 0x6dddf06c646f12f1ff1f665a584ac69f1b17d3aff81c2fff824db131cecf24d3

$ cd /opt/gopath/src/github.com/web3j/Web3App/build

$ export WEB3J_WALLET_PRIVATE_KEY=0x6dddf06c646f12f1ff1f665a584ac69f1b17d3aff81c2fff824db131cecf24d3; \
    export WEB3J_NODE_URL="http://localhost:8545"; \
    java -jar ./libs/Web3App-0.1.0-all.jar

# import private-key?
$ web3j wallet import [private-key]
Error!!!???:
No TypeConverter registered for java.util.Optional of field java.util.Optional<String> org.web3j.console.wallet.subcommands.WalletImportCommand.privateKey

```

## codes

``` plain
$ web3j wallet - github.com/web3j/web3j-cli/org.web3j.console.wallet.subcommands.WalletImportCommand

https://ethereum.stackexchange.com/questions/41072/generate-private-key-and-address-using-web3j

```
