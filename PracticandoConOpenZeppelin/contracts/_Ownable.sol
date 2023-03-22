// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MiContrato is Ownable{
    function funcionAccesiblePorTodos() public{

    }

    function paraElOwner() public onlyOwner{

    }
}