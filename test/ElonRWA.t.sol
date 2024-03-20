// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import {ElonRWA} from "src/ElonRWA.sol";

contract ElonRWATest is Test {
    string public constant NAME = "ElonRWA";
    string public constant SYMBOL = "ElonRWA";
    uint256 public constant TOTAL_SUPPLY = 100e9;

    function testConstructor() external {
        ElonRWA elonRWA = new ElonRWA();

        assertEq(elonRWA.name(), NAME);
        assertEq(elonRWA.symbol(), SYMBOL);
        assertEq(elonRWA.totalSupply(), TOTAL_SUPPLY);
        assertEq(elonRWA.balanceOf(address(this)), TOTAL_SUPPLY);
    }
}
