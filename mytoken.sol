// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DikshaToken is ERC20, Ownable {
    constructor() ERC20("DIKSHA", "DKSha") Ownable(msg.sender) {
        // Mint initial supply to the contract deployer
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(amount > 0, "Transfer amount must be greater than zero");
        require(amount <= balanceOf(msg.sender), "Insufficient balance");

        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}