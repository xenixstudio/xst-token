pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract XSToken is ERC20Detailed, ERC20, ERC20Mintable, ERC20Pausable, ERC20Burnable, Ownable {

    using SafeMath for uint256;
    
    constructor (
            string memory name,
            string memory symbol,
            uint256 totalSupply,
            uint8 decimals
    ) ERC20Detailed(name, symbol, decimals)
    public {
        _mint(owner(), totalSupply * 10**uint(decimals));
    }
}