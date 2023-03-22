// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0  <= 0.9.0;

contract PokemonFactory{
    struct Pokemon{
        uint id;
        string name;
    }

    Pokemon[] private pokemons;

    mapping (uint=> address) public pokemonToOwner;
    mapping (address => uint) ownerPokemonCount;
    event eventNewPokemon( string msj,Pokemon newPokemon);

    function createPokemon(string memory _name, uint _id) public{
        pokemons.push(Pokemon(_id,_name));
        pokemonToOwner[_id]=msg.sender;
        ownerPokemonCount[msg.sender]++;
        require(_id>0 && bytes(_name).length>2,"id debe ser mayor a 0 y/o nombre debe tener mas de 2 caracteres");
    }

    function getAllPokemons() public view returns (Pokemon [] memory){
        return pokemons;
    }

    function getResult() public pure returns(uint product, uint sum){
        uint a = 1;
        uint b = 2;
        product = a * b;
        sum = a + b;
    }
}
