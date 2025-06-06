// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Altuna Memedi
contract Calculator {
    function sum(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }

    function divide(uint x, uint y) public pure returns (uint) {
        require(y != 0, "Nuk lejohet ndarja me zero");
        return x / y;
    }
}
