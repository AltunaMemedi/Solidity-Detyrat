// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Altuna Memedi
contract FixedSizeArray {
    uint8[5] public vlera;  

    function inicializo(uint8 _v1, uint8 _v2, uint8 _v3, uint8 _v4, uint8 _v5) public {
        vlera[0] = _v1;
        vlera[1] = _v2;
        vlera[2] = _v3;
        vlera[3] = _v4;
        vlera[4] = _v5;
    }

   
    function shuma() public view returns (uint8) {
        uint8 total = 0;
        for(uint i = 0; i < vlera.length; i++) {
            total += vlera[i];
        }
        return total;
    }
}
