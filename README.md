# BasicContract

## Description

This Solidity program defines a simple smart contract named `BasicContract` intended for use on the Ethereum blockchain. The contract is designed to manage deposits into the contract by its owner.

## Features

- **Ownership Control**: Only the owner of the contract (the account that deployed it) can deposit funds.
- **Balance Management**: Tracks the balance within the contract, ensuring safe arithmetic operations to prevent overflow.

## Contract Functions

### Constructor

- Initializes the contract by setting the deployer as the owner and initializing the balance to 0.

### deposit(uint amount)

- Allows the owner to deposit funds into the contract.
- Parameters:
    - `amount`: The amount of funds to deposit.
- Restrictions:
    - Can only be called by the owner of the contract.
    - Ensures that the deposit operation does not cause a balance overflow.
