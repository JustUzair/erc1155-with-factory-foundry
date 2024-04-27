## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

### Usage and Testing

#### Refer to deployed NFT contract and Token [here](https://optimism-sepolia.blockscout.com/token/0x1F311df9cFff2CA6990e96E377EAaBa540621b92)

#### Upload the `folder` to ipfs containing the json files named in sequence like 0, 1, 2...

- Refer to the following IPFS upload for the same:

  - [IPFS Folder Upload Example](https://ipfs.io/ipfs/QmRaNapy2YG1iF8yywdJGn5BehDc4RyxxUMM49uK7D8MXv/)

- Contract will internally handle the json files for uri

### Installation

```bash
git clone https://github.com/KyteSocial/kyte_contracts.git
cd kyte_contracts
npm i
forge build
```

### Running scripts in foundry

#### Running local testnet

- ```bash
  anvil
  ```

#### Import Local Blockchain to Wallet for testing, add the follwing to networks in wallet

**_Network Name_** : `Anvil Testnet`

**_New RPC URL_** : `http://localhost:8545/`

**_Chain ID_** : `31337`

**_Currency Symbol_** : `ETH`

#### Deploy NFT Collection to a local blockchain

- ```bash
  forge script script/Deploy.NftCollection.s.sol  --rpc-url anvil_local --broadcast
  ```

#### Deploy NFT Collection to a mainnet or testnet

- ```bash
    forge script script/Deploy.NftCollection.s.sol  --rpc-url [mumbai |  base_sepolia |  optimism_sepolia |  eth_sepolia |  eth_mainnet |  base_mainnet |  polygon_mainnet | optimism_mainnet] --broadcast
  ```

#### Minting NFT to a chain using foundry script

- ```bash
  forge script script/DeployAndMintFromCollection.s.sol  --rpc-url anvil_local --broadcast
  ```

#### Running foundry tests

- ```bash
  forge test -vvv
  ```

#### Running a particular test in the test file

- ```bash
  forge test --mt test_name -vvv
  ```
