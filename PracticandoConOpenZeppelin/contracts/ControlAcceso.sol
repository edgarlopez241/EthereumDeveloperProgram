// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import '@openzeppelin/contracts/access/AccessControl.sol';

contract ControlAcces is AccessControl{
        bytes32 rolAdmin= keccak256("ROL_ADMIN");
        bytes32 rolWriter= keccak256("ROL_WRITER");

        constructor(){
            _grantRole(rolAdmin,msg.sender);
        }

        uint number;

        function store(uint256 num)public onlyWriter {
                number = num;
        }

        modifier onlyWriter(){
            require(hasRole(rolWriter,msg.sender),"solo pueden ejecutar las funciones los roles writer");
            _;
        }

         modifier onlyAdmin(){
            require(hasRole(rolAdmin,msg.sender),"solo pueden ejecutar las funciones los roles admin");
            _;
        }

        function agregarWriter(address cuenta) public onlyAdmin{
                _grantRole(rolWriter,cuenta);
        }
        
        function quitarWriter(address cuenta) public onlyAdmin{
                _revokeRole(rolWriter,cuenta);
        }
}