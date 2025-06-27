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

## Programmes Used

**VS Code** <br>
VS code is used as the code editor for this project to develop the different file types used in the project (https://code.visualstudio.com)

**MetaMask** <br>
Metamask is used as a wallet to be able to engage with the MVP on the frontend. It allows a user to connect to the created dAPP to engage with the platform. It also enables the user to pay gas fees in the testnet using POL. For the purpose of the MVP a small balance of the amoy token is needed which can be retrieved from a faucet such as https://faucet.stakepool.dev.br/amoy

**Node.js** <br>
Node.js is installed as a JavaScript runtime allowing for execution in the terminal. It allows for use of the npm package manager and allows for use of neccesary tools such as Hardhat and Ethers.js (https://nodejs.org/).
A directory is then created by through inserting the following commands in the terminal: <br>
`>`_mkdir zerofy-mvp_ <br>
`>`_cd zerofy-mvp_ <br>
`>`_code ._ <br>
This opens the folder in Vs Code. Following this the following commands are then input into the terminal to create a hardhat-based smart contract project: <br>
`>`_cd path\to\your\project_<br>
`>`_npm init -y_ - initialises a new Node.js project<br>
`>`_npm install --save-dev hardhat_ - installs hardhat development framework into folder<br>
`>`_npx hardhat_ - runs hardhats setup wizard, where a JavaScript Project is created<br>





