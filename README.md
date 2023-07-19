# Project-4 (ETH + AVAX)

In this project we have to do following things:

> 1. Create an ERC Token with name 'DEGEN' and symbol 'DGN'
> 2. Add functions to redeem item, GetlistofItems and more
> 3. Deploy it on Avalanche C-Chain (Snowtrace test netwrk)
> 4. Verify Your contract
> 5. Then interact with your token.

To run this code on your machine.

> 1. ## Getting Started
### Executing
      * First fork this repo.
      * Then clone the forked repo.
      * Run npm i
      * Add fuji testnet to metamask
      * Get Fuji faucet using this site https://faucet.avax.network/
      * Create your Snow trace api and generate your private key from metamask  and paste hardhatconfig file or in your env .
      * run command ``` npx hardhat run --network fuji .\scripts\deploy.js ```
      * Now your contract is deployed.
      * Verify it using command npx hardhat verify tokenAddress --network fuji
      * Copy the address of your deployed contract from console and View transactions on testnet.snowtrace.io

#### Adding fuji network
      * name: fuji
      * rpc url: https://api.avax-test.network/ext/bc/C/rpc
      * Chain id: 43113
      * Currency : AVAX

#### My contract Address : 0xbc2EBDf7C3046563796A62BbF5b506f0CB00850B

### Commands
    * npm i
    * npx hardhat run --network fuji .\scripts\deploy.js
    * npx hardhat verify tokenAddress --network fuji


## Authors
Shivam Gupta (Metacrafter Username: Shivam311) (College UID: 22MCA20112)

## License
This project is licensed under the MIT License.
