//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract MAPI2 {

    address public propietario;
    uint256 public saldo;
    

    constructor(){
        propietario = msg.sender; 
        saldo = 0;
    }


    function consignar (uint cantidad) public {
        saldo += cantidad;
    }

}
