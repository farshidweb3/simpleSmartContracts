# Bank Smart Contract - Readme

## Introduction

This readme provides an overview of the Bank smart contract, which allows users to create accounts, deposit funds, and withdraw funds. The smart contract consists of two contracts: `Account` and `Bank`. The `Account` contract represents a single account, while the `Bank` contract manages multiple accounts. This readme includes the following sections:

1. Technologies Used
2. Deployment
3. How to Use the Smart Contracts

## Technologies Used

To interact with the Bank smart contracts, you will need the following technologies:

- Solidity: The smart contract language used to define and deploy the Bank contracts.
- Ethereum: The blockchain network where the smart contracts are deployed.

## Deployment

To deploy the Bank smart contracts, follow these steps:

1. Set up a development environment for Solidity.
2. Compile the smart contracts using a Solidity compiler.
3. Deploy the compiled smart contracts to the Ethereum blockchain using a tool such as Remix, Truffle, or Hardhat.
4. Ensure you have sufficient Ether (ETH) in your account to cover the deployment costs.
5. Once the deployment is successful, note the addresses of the deployed `Bank` contract and the associated `Account` contracts for future interactions.

## How to Use the Smart Contracts

Once the Bank smart contracts are deployed, users can interact with them using the following steps:

1. Access the deployed `Bank` contract on the Ethereum blockchain network.
2. To create a new account, call the `createAccount` function.
   - This will create a new `Account` contract associated with the caller's address and add it to the `accounts` array in the `Bank` contract.
3. To get the balance of a specific account, call the `getBalance` function and provide the account index as the parameter.
   - The function will return the current balance of the specified account.
   - Note: Account indexes start from 0.
4. To deposit funds into an account, call the `deposit` function and provide the account index as the parameter.
   - Send the desired amount of Ether (ETH) along with the function call to deposit the funds into the account.
5. To withdraw funds from an account, call the `withdraw` function and provide the account index and the amount to withdraw as the parameters.
   - The function will check if the account has sufficient balance and transfer the specified amount of Ether (ETH) to the owner of the account.
6. Repeat steps 3-5 as needed to manage multiple accounts and perform deposit and withdrawal operations.

That's it! You can now use the Bank smart contracts to create accounts, deposit funds, and withdraw funds on the Ethereum blockchain.