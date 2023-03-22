// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Variables{
    int cantidad;
    uint cantidadSinSigno;
    address direccion;
    bool firmado;
    
    constructor(bool _estaFirmado ){
        direccion=msg.sender;
        firmado= _estaFirmado;
    }
}