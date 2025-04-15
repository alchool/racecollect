
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RaceCollectNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    constructor() ERC721("RaceCollectNFT", "RCN") {
        tokenCounter = 0;
    }

    function createNFT(address to, string memory tokenURI) public onlyOwner returns (uint256) {
        uint256 newId = tokenCounter;
        _safeMint(to, newId);
        _setTokenURI(newId, tokenURI);
        tokenCounter++;
        return newId;
    }
}
