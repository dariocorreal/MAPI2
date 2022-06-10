//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract MAPI2 {

    address public propietario;
    uint256 public saldo;
    

    constructor(){
        propietario = msg.sender; 
        saldo = 0;
    }

    receive() payable external {
        saldo += msg.value;
    }

    function transferir (uint cantidad, address payable destino) payable public {
        require(msg.sender == propietario, "solo el propietario puede transferir");
        require(cantidad <= saldo, "fondos insuficientes");
        destino.transfer(cantidad);
        saldo -= cantidad;
    }

    function consignar (uint cantidad) public {
        saldo += cantidad;
    }

}
