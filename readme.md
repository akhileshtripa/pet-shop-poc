# A Sample DApp with Truffle, Solidity and Ganache
 - [Step1]
```C:\Users\91999\blockchain>npm install -g truffle
C:\Users\91999\AppData\Roaming\npm\truffle -> C:\Users\91999\AppData\Roaming\npm\node_modules\truffle\build\cli.bundled.js

> truffle@5.1.9 postinstall C:\Users\91999\AppData\Roaming\npm\node_modules\truffle
> node ./scripts/postinstall.js

- Fetching solc version list from solc-bin. Attempt #1
√ Downloading compiler. Attempt #1.
+ truffle@5.1.9
added 27 packages from 439 contributors in 259.341s
```
 - [Step 2] 

```C:\Users\91999\blockchain>mkdir pet-shop-poc```
	

 - [Step3]
> Unbox  Truffle Box just for this tutorial called pet-shop

- [Step4]
> Write sample contract say Adapors.solc. Better to use [enter link description here](https://remix.ethereum.org/) looks like ![enter image description here](https://remix.ethereum.org/)

- [Step5]
> Compile the contract
```
C:\Users\91999\blockchain\pet-shop-poc>truffle compile
Compiling your contracts...
===========================
> Compiling .\contracts\Adoption.sol
> Compiling .\contracts\Migrations.sol
```
- [Step6]
> Migration - Time to migrate the contract to the blockchain. A migration is a deployment script meant to alter the state of your application's contracts, moving it from one state to the next.
- [Step7]
> Before we can migrate our contract to the blockchain, we need to have a blockchain running. So, we're going to use [Ganache](https://www.trufflesuite.com/ganache), a personal blockchain for Ethereum development you can use to deploy contracts, develop applications, and run tests. If you haven't already, [download Ganache](https://www.trufflesuite.com/ganache) and double click the icon to launch the application. This will generate a blockchain running locally on port 7545.

`Ganache.exe inside app folder for Windows in my case. Double-click on the downloaded file, follow the prompts, and you're up and running.` 
> Ganache in local would would look like:
>

 - [ Step 8]
 - > Back in the terminal, the next step is to migrate the contract to the blockchain.
 ```
 C:\Users\91999\blockchain\pet-shop-poc>truffle migrate

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'development'
> Network id:      5777
> Block gas limit: 0x6691b7


2_deploy_contracts.js
=====================

   Deploying 'Adoption'
   --------------------
   > transaction hash:    0x69d65c173090fdec09dcfc98d81155814a649c85757969f21ef04841b1a5d0c7
   > Blocks: 0            Seconds: 0
   > contract address:    0xD261ADebABBC3EE828E1B65061135f29171C8520
   > block number:        3
   > block timestamp:     1579541831
   > account:             0x33e989542782EF87624c007614496e7CE751fbc1
   > balance:             99.98908642
   > gas used:            239915
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.0047983 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0047983 ETH


Summary
=======
> Total deployments:   1
> Final cost:          0.0047983 ETH

 ```
> Now, go to Ganache app, you will note that the state of the blockchain has changed. The blockchain now shows that the current block, previously `0`, is now `4`. In addition, while the first account originally had 100 ether, it is now lower, due to the transaction costs of migration. See below image and blocks.
 

