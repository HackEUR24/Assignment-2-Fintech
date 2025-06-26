// scripts/deploy.js
async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with account:", deployer.address);
  const ZFYC = await ethers.getContractFactory("ZFYC");
  const contract = await ZFYC.deploy();
  await contract.deployed();
  console.log("ZFYC deployed to:", contract.address);
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});