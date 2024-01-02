// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IToken} from "./Interfaces/IToken.sol";
import {Renderer} from "./Renderer.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Token is ERC721 {
    constructor() ERC721("Etherage", "POA") {}
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    event NewNFTMinted(address sender, uint256 tokenId);
    mapping (address => uint256) FirstTimestamp;

    function mint(uint256 first_txn_timestamp) public {
        uint256 newItemId = _tokenIds.current();
        FirstTimestamp[msg.sender] = first_txn_timestamp;

        _safeMint(msg.sender, newItemId);
    
        _tokenIds.increment();

        emit NewNFTMinted(msg.sender, newItemId);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        _requireMinted(tokenId);

        address owner = ownerOf(tokenId);
        uint256 first_txn_timestamp = FirstTimestamp[owner];
        string memory _tokenURI = Renderer.constructTokenURI(owner, first_txn_timestamp);

        return _tokenURI;
    }
}