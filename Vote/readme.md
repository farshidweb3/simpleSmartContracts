# Voting Smart Contract - Readme

## Introduction

This readme provides an overview of the Voting smart contract, which allows users to vote for candidates. The smart contract is implemented in Solidity and deployed on the Ethereum blockchain. This readme includes the following sections:

1. Technologies Used
2. Deployment
3. How to Use the Smart Contract

## Technologies Used

To interact with the Voting smart contract, you will need the following technologies:

- Solidity: The smart contract language used to define and deploy the Voting contract.
- Ethereum: The blockchain network where the smart contract is deployed.

## Deployment

To deploy the Voting smart contract, follow these steps:

1. Set up a development environment for Solidity.
2. Compile the smart contract using a Solidity compiler.
3. Deploy the compiled smart contract to the Ethereum blockchain using a tool such as Remix, Truffle, or Hardhat.
4. Ensure you have sufficient Ether (ETH) in your account to cover the deployment costs.
5. Once the deployment is successful, note the address of the deployed smart contract for future interactions.

## How to Use the Smart Contract

Once the Voting smart contract is deployed, users can interact with it using the following steps:

1. Access the deployed smart contract on the Ethereum blockchain network.
2. Choose a candidate to vote for: Alice, Bob, or Charlie.
3. Call the `vote` function and provide the selected candidate as the parameter.
   - Make sure you haven't already voted by checking the `voted` status using the `voters` mapping.
   - If you have already voted, an error message will be displayed.
   - If you haven't voted, your vote will be recorded for the chosen candidate, and the `voted` status will be updated to prevent multiple votes.
4. To retrieve the vote count for a specific candidate, call the `getVoteCount` function and provide the candidate as the parameter.
   - The function will return the total number of votes received by the specified candidate.
   - Candidates are represented by the `Candidate` enum: `Alice`, `Bob`, and `Charlie`.

That's it! You can now use the Voting smart contract to cast votes for candidates and retrieve the vote counts for each candidate on the Ethereum blockchain.