// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Aluna Memedi
contract KontrollNumriThjeshte {
    uint private numri; // numri që do të kontrollojmë
    bool private eshteThjeshte; // statusi nëse është apo jo

    // Funksion për të vendosur numrin që do kontrollohet
    function vendosNumrin(uint _numri) public {
        numri = _numri;
        eshteThjeshte = kontrolloNumrin(_numri);
    }

    // Funksion privat për të kontrolluar nëse është numër i thjeshtë
    function kontrolloNumrin(uint _n) private pure returns (bool) {
        if (_n <= 1) {
            return false;
        }
        for (uint i = 2; i * i <= _n; i++) {
            if (_n % i == 0) {
                return false;
            }
        }
        return true;
    }

    // Funksion publik që kthen një mesazh bazuar në kontrollin
    function merrMesazhin() public view returns (string memory) {
        if (numri == 0) {
            return "Numri nuk eshte vendosur ende.";
        } else if (eshteThjeshte) {
            return "Numri eshte i thjeshte.";
        } else {
            return "Numri nuk eshte i thjeshte.";
        }
    }

    // (Opsionale) Funksion që kthen vetë numrin e ruajtur
    function merrNumrin() public view returns (uint) {
        return numri;
    }
}
