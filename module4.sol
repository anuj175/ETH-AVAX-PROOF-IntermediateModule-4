// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract DegenToken {
    string public name = "Degen"; // Token name
    string public symbol = "DGN"; // Token symbol
    uint8 public decimals = 18; // Token decimals, similar to most ERC-20 tokens
    uint256 public totalSupply; // Total supply of tokens

    mapping(address => uint256) public balanceOf; // Mapping to store the balance of each address
    mapping(address => mapping(address => uint256)) public allowance; // Mapping to store the approved allowance for each address

    event Transfer(address indexed from, address indexed to, uint256 value); // Event emitted on token transfer
    event Approval(address indexed owner, address indexed spender, uint256 value); // Event emitted on approval of spending

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply * 10**uint256(decimals); // Set the total supply of tokens
        balanceOf[msg.sender] = totalSupply; // Assign the total supply to the contract creator's balance
    }

    function transfer(address to, uint256 value) external returns (bool) {
        require(to != address(0), "Invalid address"); // Check if the destination address is valid
        require(value <= balanceOf[msg.sender], "Insufficient balance"); // Check if the sender has enough balance

        balanceOf[msg.sender] -= value; // Deduct the amount from the sender's balance
        balanceOf[to] += value; // Add the amount to the receiver's balance

        emit Transfer(msg.sender, to, value); // Emit a transfer event
        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] = value; // Approve the spender to spend the specified amount

        emit Approval(msg.sender, spender, value); // Emit an approval event
        return true;
    }

    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        require(from != address(0), "Invalid address"); // Check if the source address is valid
        require(to != address(0), "Invalid address"); // Check if the destination address is valid
        require(value <= balanceOf[from], "Insufficient balance"); // Check if the source has enough balance
        require(value <= allowance[from][msg.sender], "Allowance exceeded"); // Check if the spender is allowed to spend the specified amount

        balanceOf[from] -= value; // Deduct the amount from the source's balance
        balanceOf[to] += value; // Add the amount to the receiver's balance
        allowance[from][msg.sender] -= value; // Reduce the spender's allowance by the spent amount

        emit Transfer(from, to, value); // Emit a transfer event
        return true;
    }
}
