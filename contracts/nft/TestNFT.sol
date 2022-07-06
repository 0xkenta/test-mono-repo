// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TestNFT is ERC721 {
    constructor() ERC721("Test Token", "TST") {}

    uint256 public counter = 1;

    function mint() external {
        _mint(msg.sender, counter);
        ++counter;
    }
}