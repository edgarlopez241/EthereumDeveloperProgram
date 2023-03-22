const {expect} = require ("chai");
const { ethers } = require("hardhat");

describe ("Pokemon contract",function(){
    it("Pokemon Factory shouldn't pokemons", async function(){
        const PokemonFactory = await ethers.getContractFactory("PokemonFactory");

        const hardhatPokemon = await PokemonFactory.deploy();

        const pokemons = await hardhatPokemon.getAllPokemons();
        expect(pokemons.length).to.equal(0);
    })
}) 