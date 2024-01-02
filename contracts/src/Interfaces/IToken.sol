// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @title Given input the first timestamp ever sent from the account
/// @title Mints an NFT containing the Etherage of the msg.sender
/// @dev "Look what you made me do ~ Taylor Swift"

interface IToken {
    // Emitted when a new NFT is minted
    event NewNFTMinted(address sender, uint256 tokenId);

    // Mints a new NFT to msg.sender
    function mint(uint256 first_txn_timestamp) external;

    // Sets the tokenURI of the NFT
    function tokenURI(uint256 tokenId) external view returns (string memory);
}
