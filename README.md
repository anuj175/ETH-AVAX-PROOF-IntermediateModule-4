# DegenToken Smart Contract

The `DegenToken` smart contract represents a basic ERC-20 token with an additional token redemption feature. It allows users to transfer tokens, approve spending allowances, and redeem tokens for prizes.

## Overview

- Contract Name: DegenToken
- Solidity Version: ^0.8

## Functionality

### ERC-20 Token Basics

- `name`: Name of the token.
- `symbol`: Symbol of the token.
- `decimals`: Decimal places for the token.
- `totalSupply`: Total supply of the token.
- `balanceOf`: Mapping to track token balances of addresses.
- `allowance`: Nested mapping to store approved spending allowances.

### Events

- `Transfer`: Emitted when tokens are transferred between addresses.
- `Approval`: Emitted when an address approves another for spending tokens.
- `Redeem`: Emitted when a user redeems tokens for a prize.

### Functions

- `constructor(uint256 initialSupply)`: Initializes the contract with an initial supply of tokens.
- `transfer(address to, uint256 value)`: Transfers tokens from the sender to a specified address.
- `approve(address spender, uint256 value)`: Approves a spender to spend tokens on behalf of the sender.
- `transferFrom(address from, address to, uint256 value)`: Transfers tokens from one address to another, subject to approval.
- `redeem(string memory prize)`: Redeems tokens for a specified prize.

## Usage

1. Deploy the `DegenToken` contract, providing the initial supply of tokens.
2. Interact with the contract's functions to transfer tokens, approve allowances, and redeem tokens for prizes.


