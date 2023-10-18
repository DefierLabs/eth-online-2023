pragma solidity >=0.8.4;

import { ERC20 } from "@openzeppelin/contracts-0.8/token/ERC20/IERC20.sol";
import { Ownable } from "@openzeppelin/contracts-0.8/access/Ownable.sol";

// import { console } from "hardhat/console.sol";

contract OmniToken is ERC20, Ownable {

    address public minter;

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function setMinter(address _minter) onlyOwner external {
        require( _minter != address(0), "!0");
        minter = _minter;
    }
}
