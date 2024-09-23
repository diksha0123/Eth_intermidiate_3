# DikshaToken - ERC20 Token Contract

DikshaToken (DKSha) is a custom ERC20 token contract built using OpenZeppelin's ERC20 implementation in Solidity. This contract allows the owner to mint new tokens, allows token holders to burn tokens, and includes custom transfer functionality.

## Features

- **ERC20 Standard**: Implements the standard ERC20 interface for token transfers, approvals, and balance management.
- **Ownable**: Only the contract owner can mint new tokens.
- **Minting**: The owner can mint new tokens to any address.
- **Burning**: Any token holder can burn (destroy) their tokens.
- **Custom Transfer**: Includes additional validation for transfer functions (e.g., zero-address check).

## Requirements

- Solidity ^0.8.0
- OpenZeppelin Contracts

## Installation

1. Install the required dependencies (OpenZeppelin Contracts):
    ```bash
    npm install @openzeppelin/contracts
    ```

2. Compile the contract using any Solidity compiler or tool like Hardhat or Truffle.

## Contract Structure

- **Name**: DIKSHA
- **Symbol**: DKSha
- **Decimals**: 18
- **Initial Supply**: 1,000,000 tokens (allocated to the contract deployer)

## Functions

- `mint(address to, uint256 amount)`: Allows the owner to mint new tokens to a specified address.
- `burn(uint256 amount)`: Allows the sender to burn their tokens.
- `transfer(address recipient, uint256 amount)`: Transfers tokens with additional validation (checks for zero addresses and valid amounts).

## Example Deployment

To deploy this contract on a network, use tools like Hardhat or Truffle with the following constructor:

solidity
constructor() ERC20("DIKSHA", "DKSha") {
    _mint(msg.sender, 1000000 * 10 ** decimals());
}

### Author
Diksha
