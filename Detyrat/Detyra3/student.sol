// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Altuna Memedi
contract StudentData {
   
    uint256 private studentId;

   
    string public name;
    string public surname;
    string public major;

    constructor(
        uint256 _id,
        string memory _name,
        string memory _surname,
        string memory _major
    ) {
        studentId = _id;
        name = _name;
        surname = _surname;
        major = _major;
    }

    function getStudentId() public view returns (uint256) {
        return studentId;
    }
}
