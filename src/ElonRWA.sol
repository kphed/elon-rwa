// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract ElonRWA is ERC20, ERC20Permit {
    string public constant NAME = "ElonRWA";
    string public constant SYMBOL = "ElonRWA";

    // 100 billion.
    uint256 public constant TOTAL_SUPPLY = 100e9;

    constructor() ERC20(NAME, SYMBOL) ERC20Permit(NAME) {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
}
