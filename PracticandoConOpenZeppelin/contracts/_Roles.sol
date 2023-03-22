// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import '@openzeppelin/contracts/access/AccessControl.sol';


contract ContratoConRoles is AccessControl{

        bytes32 public constant ROL_ADMIN = keccak256 ("ROL_ADMIN");
        bytes32 public constant ROL_USUARIO = keccak256 ("ROL_USUARIO");

        constructor(){
            _grantRole(ROL_ADMIN,msg.sender);
        }

        function soloAdmin() public {
            require(hasRole(ROL_ADMIN, msg.sender), "esta funcion solo puede ser accedida por el Administrador");
        }

         function soloUsuario() public {
            require(hasRole(ROL_USUARIO, msg.sender), "esta funcion solo puede ser accedida por el Usuario");
        }

         function agregarRoles(bytes32 role, address account)public{
              require(hasRole(ROL_ADMIN, msg.sender), "esta funcion solo puede ser accedida por el Administrador");
              _grantRole(role,account);

         } 


        
}