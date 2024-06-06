// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Marketplace} from "../../contracts/Marketplace.sol";
import {MarketplaceConfig} from "../../contracts/Configuration.sol";

contract MarketplaceHarness is Marketplace {
    constructor(IERC20 token_, MarketplaceConfig memory configuration) Marketplace(token_, configuration) {}

    function totalReceived() public view returns (uint256) {
        return _marketplaceTotals.received;
    }

    function totalSent() public view returns (uint256) {
        return _marketplaceTotals.sent;
    }

    function tokenBalance() public view returns (uint256) {
        return token.balanceOf(address(this));
    }
}
