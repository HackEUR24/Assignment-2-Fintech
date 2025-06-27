// Import the Hardhat Ethers plugin for contract deployment and interaction
require("@nomiclabs/hardhat-ethers");

// Load environment variables from the .env file (e.g., RPC URL and private key)
require("dotenv").config();

module.exports = {
  // Specify the Solidity compiler version
  solidity: "0.8.20",

  // Define custom network configurations
  networks: {
    // Configuration for the Polygon Amoy testnet
    amoy: {
      // RPC URL for connecting to the Amoy network (e.g., from Alchemy or another provider)
      url: process.env.MUMBAI_RPC,

      // Wallet private key used for deployments (loaded securely from .env)
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
