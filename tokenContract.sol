// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";
contract MatijaToken is ERC20, Ownable {
constructor() ERC20("YinksToken", "YNKSTKN")
{
_mint(msg.sender, 88 * 10 ** decimals());
}
function mint(address to, uint256 amount) public onlyOwner {
_mint(to, amount);
}
}
