require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",  // Update to match the version used in your contract
  etherscan: {
    apiKey: "T4BI6VXYY19F3FFIIED7M6S2KDB4MJZ76F",
  },
  networks: {
    mumbai: {
      url: "https://rpc-mumbai.maticvigil.com",
    },
  },
};
