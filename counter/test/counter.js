 const {expect} = require('chai');
const { ethers } = require('hardhat');

 describe('Counter Contract',()=>{
    it('Should increment the counter',async ()=>{
        const Counter = await ethers.getContractFactory('Counter') 
        const counter = await Counter.deploy(0);
        await counter.increment();
        const updatedCounter = counter.getCounter();
        
        expect(updatedCounter).to.equal(1);
    })
 })