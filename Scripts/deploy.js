// scripts/deploy.js

// Main deployment function
async function main() {
  // Get the first available signer (typically the deployer's wallet)
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with account:", deployer.address);

  // Load the compiled ZFYC contract definition
  const ZFYC = await ethers.getContractFactory("ZFYC");

  // Deploy the contract instance to the network
  const contract = await ZFYC.deploy();

  // Wait until the contract is confirmed and deployed
  await contract.deployed();

  // Log the deployed contract address
  console.log("ZFYC deployed to:", contract.address);
}

// Execute the deployment script and handle any errors
main().catch((error) => {
  console.error(error);
  process.exitCode = 1; // Exit with error code if deployment fails
});
