// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// import "./ERC20.sol"
// contract ERC20Detailed is ERC20.sol

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract CarbinoCapital is ERC20Votes {
    uint256 public maxSupply = 1000 * 10 ** 18;

    constructor()
        ERC20("CarbinoCapital", "CC")
        ERC20Permit("CarbinoCapital")
    {
        _mint(msg.sender, maxSupply);
    }

}
