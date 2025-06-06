// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Altuna Memedi
contract StudentStorage {
    struct Student {
        uint id;
        string emri;
        string drejtimi;
    }

    Student[] public studentet;

    // Shton një student të ri në array (storage)
    function shtoStudent(uint _id, string memory _emri, string memory _drejtimi) public {
        studentet.push(Student(_id, _emri, _drejtimi));
    }

    // Kthen studentin në pozicionin e dhënë, si memory (jo për gjendje)
    function merrStudent(uint index) public view returns (Student memory) {
        require(index < studentet.length, "Index jashte kufijve");
        return studentet[index];
    }

    // Ndryshon emrin e një studenti duke përdorur referencë në storage
    function ndryshoEmrin(uint index, string memory emriRi) public {
        require(index < studentet.length, "Index jashte kufijve");
        
        Student storage s = studentet[index]; // referencë në storage
        s.emri = emriRi;
    }
}
