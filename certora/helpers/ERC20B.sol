// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20B is ERC20 {
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {}
}
