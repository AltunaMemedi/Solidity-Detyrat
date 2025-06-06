// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Altuna Memedi
contract SenderContract {

    function sendViaReceive(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "Transfer failed (receive)");
    }

    
    function sendViaFallback(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}(abi.encodeWithSignature("unknownFunction()"));
        require(success, "Transfer failed (fallback)");
    }
}
