// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import '../erc20/ITestToken.sol';
import '../nft/ITestNFT.sol';
contract TestGovernance {

    ITestToken public testToken;
    ITestNFT public testNFT;

    constructor(address _testToken, address _testNFT) {
        testToken = ITestToken(_testToken);
        testNFT = ITestNFT(_testNFT);
    }
    function test() external {
        testToken.mint(msg.sender, 100000);
        testNFT.mint();
    }
}