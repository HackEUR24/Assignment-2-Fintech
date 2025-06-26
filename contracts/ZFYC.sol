// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ZFYC is ERC1155, Ownable {
    constructor() ERC1155("https://example.com/api/token/{id}.json") Ownable(msg.sender) {}

    // Mint tokens of a specific project (tokenId)
    function mint(address to, uint256 tokenId, uint256 amount) public {
        _mint(to, tokenId, amount, "");
    }

    // Retire tokens (burn) for a specific project (tokenId)
    function retire(uint256 tokenId, uint256 amount) public {
        _burn(msg.sender, tokenId, amount);
    }

    // Donate tokens for a specific project (tokenId) to an NGO
    function donate(uint256 tokenId, uint256 amount, address ngo) public {
        safeTransferFrom(msg.sender, ngo, tokenId, amount, "");
    }
}