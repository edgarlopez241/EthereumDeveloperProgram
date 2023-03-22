require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks:{
    goerli:{
      url:'https://eth-goerli.g.alchemy.com/v2/GJEreIzVZyN6McrpIuufjN1-uTfES6ok',
      accounts:[
        '8f835c0e27116402d66c4b77774ffe3a0df54a89a7af15c5450c58185edbcbaf'
      ]
    }
  }
};
