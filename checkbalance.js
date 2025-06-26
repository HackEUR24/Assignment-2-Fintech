const { ethers } = require("ethers");

const senderPrivateKey = "7a66ecddebbeebae21d7645a0c846b1b3ac8dc8c69878c50e7cb792270924ba4";

const provider = new ethers.providers.JsonRpcProvider("https://rpc-amoy.polygon.technology");
const wallet = new ethers.Wallet(senderPrivateKey, provider);

async function main() {
  const balance = await wallet.getBalance();
  console.log("Wallet address:", wallet.address);
  console.log("Balance:", ethers.utils.formatEther(balance), "POL");
}

main().catch(console.error);