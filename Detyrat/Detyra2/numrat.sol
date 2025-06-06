// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TekCift {

    function tekCift(uint256 numri) public pure returns (string memory) {
        if (numri % 2 == 0) {
            return "Numri eshte cift";
        } else {
            return "Numri eshte tek";
        }
    }
}