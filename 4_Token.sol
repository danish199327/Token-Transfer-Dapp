// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MTTContract is ERC20 {
    address public owner;

    constructor() ERC20("MDZ", "MDZ") {
        _mint(msg.sender, 5000 * 10**decimals()); // Mint 5000 tokens initially to the contract deployer
        owner = msg.sender;
    }

    function transferTokens(address recipient, uint256 amount) external {
        _transfer(msg.sender, recipient, amount * 10**decimals());
    }

    function checkBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }
}
