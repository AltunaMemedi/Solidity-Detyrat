// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Altuna Memedi
contract MaxMinFinder {
    uint[] public vlerat;  // Varg për të ruajtur vlerat e futura

    // Funksion për të futur vlera në varg
    function shtoVlere(uint _vlera) public {
        vlerat.push(_vlera);
    }

    // Gjen dhe kthen vlerën maksimale
    function max() public view returns (uint) {
        require(vlerat.length > 0, "Asnje vlere nuk eshte futur!");

        uint maxValue = vlerat[0];
        for (uint i = 1; i < vlerat.length; i++) {
            if (vlerat[i] > maxValue) {
                maxValue = vlerat[i];
            }
        }
        return maxValue;
    }

    // Gjen dhe kthen vlerën minimale
    function min() public view returns (uint) {
        require(vlerat.length > 0, "Asnje vlere nuk eshte futur!");

        uint minValue = vlerat[0];
        for (uint i = 1; i < vlerat.length; i++) {
            if (vlerat[i] < minValue) {
                minValue = vlerat[i];
            }
        }
        return minValue;
    }

    // Funksion ndihmës për të parë gjithë vargun (opsional)
    function getVlerat() public view returns (uint[] memory) {
        return vlerat;
    }
}
