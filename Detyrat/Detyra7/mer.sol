// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 //Altuna Memedi
 
contract ReceiverContract {
    event Received(address sender, uint amount, string functionType);

    receive() external payable {
        emit Received(msg.sender, msg.value, "receive");
    }

    fallback() external payable {
        emit Received(msg.sender, msg.value, "fallback");
    }

  
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
