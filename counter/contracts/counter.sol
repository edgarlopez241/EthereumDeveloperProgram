// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract Counter{
        uint counter;
        uint valor;
    constructor (uint _counter, uint _valor){
        counter = _counter;
        valor = _valor;
    }

    function getCounter() public view returns(uint){
        return counter;
    } 

    function increment() public{
        counter++;
    }

    function setCounter(uint _valor) public {
            counter = _valor;
    }
}