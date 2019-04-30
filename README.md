# Forceth

A tool to send ether to a contract irrespective of its default payable function. See [here](https://consensys.github.io/smart-contract-best-practices/known_attacks/#forcibly-sending-ether-to-a-contract).

The deployed contract is a factory, with a payable function `sendTo(address)`. This deploys a depositor contract which self destructs, transferring the balance to the address in the function argument. The use cases are niche. This was developed so REKT tokens from rekt.fyi could be sent to closed ICO contracts, because you can't send REKT to an address with a balance of 0 but its funny if you send REKT to shitcoins.

## Deployments

### Mainnet

### Kovan
[0xfb1870B58Abc84e74Bc15d9340549f3c819E0E3D](https://kovan.etherscan.io/address/0xfb1870B58Abc84e74Bc15d9340549f3c819E0E3D)

### Rinkeby

### Ropsten
[0xf764a516240D60eE6c4c8F5aF5fe7ff6b76500D6](https://ropsten.etherscan.io/address/0xf764a516240D60eE6c4c8F5aF5fe7ff6b76500D6)
