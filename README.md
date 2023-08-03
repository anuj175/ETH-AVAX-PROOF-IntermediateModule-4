# DegenToken (DGN) - ERC-20 Smart Contract

## Overview

The DegenToken (DGN) is an Ethereum-based ERC-20 token smart contract. This contract implements the ERC-20 standard, providing basic functionality for a fungible token on the Ethereum blockchain. The DegenToken contract allows users to create, transfer, and manage the "Degen" token with the symbol "DGN".

## Token Details

- Name: Degen
- Symbol: DGN
- Decimals: 18 (Similar to most ERC-20 tokens)

## Smart Contract Functions

### `constructor(uint256 initialSupply)`

The constructor function initializes the DegenToken contract when deployed. It takes an `initialSupply` parameter to set the initial total supply of Degen tokens. The creator of the contract (deployer) receives the entire initial supply.

### `transfer(address to, uint256 value) external returns (bool)`

The `transfer` function allows token holders to transfer Degen tokens to a specified recipient address (`to`). It checks for a valid destination address and ensures that the sender has enough tokens to perform the transfer. If successful, a `Transfer` event is emitted.

### `approve(address spender, uint256 value) external returns (bool)`

The `approve` function allows a token holder to approve a specific address (`spender`) to spend a certain amount of their Degen tokens on their behalf. The approved amount is stored in the `allowance` mapping. Upon approval, an `Approval` event is emitted.

### `transferFrom(address from, address to, uint256 value) external returns (bool)`

The `transferFrom` function is used by approved addresses to transfer Degen tokens from one account (`from`) to another account (`to`) within the approved allowance limit. It verifies valid source and destination addresses, sufficient balance, and that the spender's allowance is not exceeded. If the transfer is successful, a `Transfer` event is emitted.

## Events

The DegenToken contract emits two events to track token transfers and approval:

- `Transfer`: Emitted whenever Degen tokens are transferred from one address to another.
- `Approval`: Emitted when a token holder approves another address to spend Degen tokens on their behalf.

## Usage

1. Deploy the Contract: Deploy the DegenToken contract to the Ethereum blockchain, specifying the desired initial supply.

2. Token Transfer: Use the `transfer` function to send Degen tokens to other Ethereum addresses.

3. Allowance Approval: Use the `approve` function to allow specific addresses to spend a certain amount of Degen tokens on your behalf.

4. Spending with Allowance: Approved addresses can use the `transferFrom` function to spend Degen tokens on behalf of the token holder, within the approved allowance.

## Disclaimer

This smart contract serves as a basic implementation of an ERC-20 token. It is provided for educational and demonstration purposes only. Use it responsibly and exercise caution when deploying and interacting with smart contracts in a production environment. Ensure to conduct a thorough security audit before deploying any smart contract to the main Ethereum network.


