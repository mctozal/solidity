// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract C {
    function f() public view returns (uint) {
        return g(block.timestamp);
    }
    function g(uint x) public pure returns (uint) {
        unchecked { return x - 2; }
    }
    function h(uint x) public pure returns (uint) {
        return g(x) + g(x);
    }
}