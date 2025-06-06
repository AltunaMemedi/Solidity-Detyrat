// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyName {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function updateName(string memory _newName) public {
        name = _newName;
    }
}
