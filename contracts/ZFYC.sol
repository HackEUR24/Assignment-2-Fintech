// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Importing ERC1155 standard for multi-token support
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

// Importing access control functionality for ownership
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title ZFYC – Zerofy Fractional Yield Credits
 * @dev ERC-1155 contract for minting, retiring, and donating carbon credit tokens
 */
contract ZFYC is ERC1155, Ownable {
    
    /**
     * @dev Constructor sets the base URI and initializes contract ownership.
     * The URI typically points to off-chain metadata (e.g., IPFS or API endpoint).
     */
    constructor() ERC1155("https://example.com/api/token/{id}.json") Ownable(msg.sender) {}

    /**
     * @notice Mint new carbon credit tokens for a specific project.
     * @param to The recipient address to receive the tokens.
     * @param tokenId The project ID (corresponds to a specific carbon project).
     * @param amount Number of tokens to mint.
     * Only callable by anyone (public), but can be restricted if needed.
     */
    function mint(address to, uint256 tokenId, uint256 amount) public {
        _mint(to, tokenId, amount, "");
    }

    /**
     * @notice Retire (burn) tokens from the caller’s account.
     * @param tokenId The project ID of the tokens being retired.
     * @param amount Number of tokens to burn.
     * This action is irreversible and represents a carbon offset.
     */
    function retire(uint256 tokenId, uint256 amount) public {
        _burn(msg.sender, tokenId, amount);
    }

    /**
     * @notice Donate carbon credit tokens to a specified NGO address.
     * @param tokenId The project ID of the tokens being donated.
     * @param amount Number of tokens to donate.
     * @param ngo The recipient NGO wallet address.
     * Uses `safeTransferFrom` to ensure recipient compliance with ERC1155.
     */
    function donate(uint256 tokenId, uint256 amount, address ngo) public {
        safeTransferFrom(msg.sender, ngo, tokenId, amount, "");
    }
}
