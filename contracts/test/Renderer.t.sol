// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Renderer} from "../src/Renderer.sol";

contract RendererTest is Test {
    using Renderer for *;

    function setUp() public {}

    function testRenderingGas() public {
        string memory answer = Renderer.constructTokenURI(0xc5102fE9359FD9a28f877a67E36B0F050d81a3CC,1654646411);

    }


}
