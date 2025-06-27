# Zerofy MVP – Fractional Carbon Credits on Polygon (Amoy)

Zerofy is a decentralized platform that enables users to **mint**, **retire**, and **donate** fractional carbon credits, represented as ERC-1155 tokens, on the Polygon Amoy testnet.

This MVP showcases a blockchain-based approach to environmental accountability, allowing individuals to contribute to verified climate projects through transparent, on-chain actions.

## Key Features

- **Wallet Connection** via MetaMask or Rabby
- **Mint Carbon Credits** tied to specific sustainability projects
- **Retire Credits** and generate public, verifiable offset receipts
- **Donate Credits** to selected environmental NGOs
- Powered by **Hardhat**, **Ethers.js**, and deployed on **Polygon Amoy**

This project demonstrates how blockchain can support traceable, programmable climate action in a user-friendly web interface.

## Programs Used

### **VS Code**
[Visual Studio Code](https://code.visualstudio.com) was used as the code editor for this project to develop and manage the various file types, including Solidity smart contracts, deployment scripts, and frontend HTML/JavaScript files.

---

### **Alchemy**
[Alchemy](https://www.alchemy.com/) was used to set up a blockchain app and provide a **reliable RPC endpoint** for interacting with the Polygon Amoy testnet. It allowed the project to:
- Deploy smart contracts via Hardhat
- Query on-chain data
- Broadcast transactions from the frontend and backend

---

### **MetaMask**
[MetaMask](https://metamask.io) was used as a browser wallet to connect to the dApp from the frontend. It enables:
- Secure wallet connection using `window.ethereum`
- Transaction signing for minting, retiring, and donating tokens
- Gas fee payment using testnet POL tokens

>  A small testnet POL balance is required, which can be obtained from an [Amoy faucet](https://faucet.stakepool.dev.br/amoy).

---

### **Node.js**
[Node.js](https://nodejs.org/) is a JavaScript runtime that allows execution of scripts from the terminal. It provides:
- The `npm` package manager
- Compatibility with Hardhat, Ethers.js, and deployment scripts
---

### **OpenZeppelin Contracts**
[OpenZeppelin](https://openzeppelin.com/contracts/) provides secure and audited smart contract templates.  
This project uses the `ERC1155` token standard from OpenZeppelin to represent fractional carbon credits.

Installed with:

```bash
npm install @openzeppelin/contracts
```

---

###  Project Initialization Steps

```bash
# Create and open your project folder in VS Code
mkdir zerofy-mvp
cd zerofy-mvp
code .

# Set up a Hardhat-based smart contract project
npm init -y                          # Initialize Node.js project
npm install --save-dev hardhat      # Install Hardhat
npx hardhat                         # Launch Hardhat setup wizard
```

---

##  Project Structure

```
zerofy-mvp/
├── Scripts/              # Deployment and interaction scripts (e.g., deploy.js)
├── contracts/            # Solidity smart contracts (e.g., ZFYC.sol)
├── ignition/modules/     # Hardhat Ignition modules (for advanced deployments)
├── test/                 # Test files for smart contract functionality
├── frontend.html         # Frontend interface for the MVP (served in browser)
├── hardhat.config.js     # Hardhat configuration (networks, compiler)
├── package.json          # Project metadata and dependencies
├── package-lock.json     # Lock file for consistent installs
├── .gitignore            # Git exclusions (e.g., node_modules/, .env)
└── README.md             # Project documentation (you’re reading it!)
```

###  Key File Descriptions

- **`contracts/ZFYC.sol`**  
  The core ERC-1155 smart contract representing fractional carbon credits. It includes custom logic for:
  - Minting tokens to a specific project ID
  - Retiring tokens (burning for carbon offset)
  - Donating tokens to whitelisted NGO addresses

- **`Scripts/deploy.js`**  
  A deployment script using Hardhat that:
  - Compiles and deploys the ZFYC contract
  - Logs the deployed contract address (used in the frontend)
  - Uses a private key and RPC URL provided via `.env`

- **`hardhat.config.js`**  
  Configuration file specifying:
  - Network settings (Polygon Amoy testnet)
  - Solidity version and compiler settings
  - Path customization and plugin registration (e.g., Ethers)

- **`frontend.html`**  
  A standalone HTML interface for interacting with the smart contract. It includes:
  - Wallet connection logic (MetaMask/Rabby)
  - Functions for minting, retiring, and donating tokens
  - UI elements for selecting projects and viewing balances
  - On-chain transaction feedback with Polygonscan links
---
##  Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/zerofy-mvp.git
   cd zerofy-mvp
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Compile smart contracts:
   ```bash
   npx hardhat compile
   ```

4. Configure `.env` with your Alchemy RPC URL and private key (see below):

   ```
   AMOY_RPC_URL=https://polygon-amoy.g.alchemy.com/v2/your-api-key
   PRIVATE_KEY=your-wallet-private-key
   ```

   >  **Important:** Do not commit this file to version control — it contains sensitive credentials.

5. Deploy to the Polygon Amoy testnet:
   ```bash
   npx hardhat run Scripts/deploy.js --network amoy
   ```

6. Update the contract address in the frontend:

   After deployment, copy the deployed contract address from the console output and **replace the placeholder address in your `frontend.html`** file:

   ```javascript
   const CONTRACT_ADDRESS = "0xYourDeployedContractAddressHere";
   ```

   Also make sure your ABI definition matches the deployed contract — either inline in the JS or imported from `artifacts/`.

7. Serve the frontend locally (important — do not use `file://`):

   ```bash
   npx serve .         # if using npm serve
   # OR
   python -m http.server
   ```

   Then open in your browser:
   ```
   http://localhost:3000/frontend.html
   ```

8. Connect your wallet:

   - Click **"Connect Wallet"** in the interface.
   - MetaMask or Rabby will prompt to connect and switch to **Polygon Amoy** if needed.
   - Once connected, you can mint, retire, and donate tokens from the browser.

---

##  Technical Notes

- Built with **ERC-1155** to support multiple carbon credit projects in one contract
- Contract interactions handled via **Ethers.js**
- Uses `wallet_switchEthereumChain` to prompt users to switch to Amoy
- Frontend reads metadata locally but could be extended to pull from IPFS
- Wallet and balance updates are handled after each on-chain transaction

---

## Acknowledgements

- [Polygon Amoy Testnet](https://wiki.polygon.technology/docs/pos/polygon-testnet-faucet/)
- [Alchemy](https://www.alchemy.com/)
- [OpenZeppelin](https://openzeppelin.com/)
- [Ethers.js](https://docs.ethers.org/)

---
## License 

This project was created for academic purposes and is not intended for commercial use or redistribution.

---

## Author

**Marcus Rigler**  
Developed as part of a FinTech MVP showcase project.





