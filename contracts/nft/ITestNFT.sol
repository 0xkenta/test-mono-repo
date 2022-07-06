// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

interface ITestNFT {
    function counter() external returns(uint256);
    function mint() external;
}