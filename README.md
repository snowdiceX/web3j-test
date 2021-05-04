# web3j test app

## gradle

$ gradle tasks

$ gradle assemble

## web3j-cli

[web3j/web3j-cli](https://github.com/web3j/web3j-cli)

``` plain
# create the project "Web3App"
$ web3j new helloworld

# import solidity
# web3j import -s <path to solidity sources> [-o <path>|-n <project name>|-p <package name>] -t
$ web3j import -s 

```

v1.4.1

## web3j

``` plain
$ web3j wallet create  
0x81a532c7d746b24dc452a0f08974d8a2a4e94fd9  
[address info](https://goerli.etherscan.io/address/0x81a532c7d746b24dc452a0f08974d8a2a4e94fd9)

$ cd /opt/gopath/src/github.com/web3j/Web3App/build

$ export WEB3J_WALLET_PATH=./keystore/UTC--2021-04-30T03-35-50.269000000Z--81a532c7d746b24dc452a0f08974d8a2a4e94fd9.json; \
    export WEB3J_WALLET_PASSWORD=12345678; \
    export WEB3J_NODE_URL="https://goerli.infura.io/v3/62d0c9419a1748b0bfd37cecda72d694"; \
    java -jar ./libs/Web3App-0.1.0-all.jar  

[Tx info](https://goerli.etherscan.io/tx/0xbd1d9c53fe38d01a69909e110e6a359f4fb87bd27641e631b85c88a998f2018e)

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
