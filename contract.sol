// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract BasicContract {
    address private owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint amount) public {
        // Require that the sender is the owner
        require(msg.sender == owner, "Only the owner can deposit");

        // Assert that the balance is not overflowed
        assert(balance + amount >= balance);

        balance += amount;
    }

    function withdraw(uint amount) public {
        // Require that the sender is the owner
        require(msg.sender == owner, "Only the owner can withdraw");

        // Check if the balance is sufficient
        if (balance < amount) {
            revert("Insufficient balance");
        }

        balance -= amount;
    }
}