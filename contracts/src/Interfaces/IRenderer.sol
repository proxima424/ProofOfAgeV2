// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @title Given input the first timestamp ever sent from the account
/// @title Outputs  a final <tokenURI> containing the required <SVG>
/// @dev "Look what you made me do ~ Taylor Swift"

/// @dev need to import Strings Library
/// @dev need to import base64 library

interface IRenderer{

    /// Returns the final tokenURI
    function constructTokenURI() external pure returns(string memory _tokenURI);

    /// Converts a byte into char
    function char(bytes1 b) external pure returns (bytes1 c);

    /// Converts an address into string
    function addressToString(address x) external pure returns (string memory);

    /// Returns a SVG code of rectangle box of dimensions
    function baseLayerBox() external pure returns (string memory);

    ///  Gives out SVG code which renders revolving address as in UniV3 NFT
    function revolvingAddress(address _address) external pure returns (string memory);

    /// Returns a SVG code of top heading
    function topHeading() external pure returns (string memory);

    /// Returns a SVG code of age
    function h1Age(uint256 first_txn_timestamp) external view returns (string memory);

    /// Converts seconds into date
    function secondsToDate(uint256 epochs) external pure returns (uint256 year, uint256 month, uint256 day);

}

