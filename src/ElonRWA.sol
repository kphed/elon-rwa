// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract ElonRWA is ERC20Permit {
    string private constant _NAME = "ElonRWA";
    string private constant _SYMBOL = "ElonRWA";

    // 100 billion tokens (token has 18 decimals).
    uint256 private constant _TOTAL_SUPPLY = 100e27;

    constructor() ERC20(_NAME, _SYMBOL) ERC20Permit(_NAME) {
        _mint(msg.sender, _TOTAL_SUPPLY);
    }
}
