// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {EthernautL6} from "../src/EthernautL6.sol";

contract EthernautL6Script is Script {
    EthernautL6 public ethernautL6 = EthernautL6(0x772f2aFeF8f829000305357AdeC67D31f5cE579d);

    function run() public {
        uint256 userBalance = ethernautL6.balanceOf(0x478f3476358Eb166Cb7adE4666d04fbdDB56C407);
        console.log("User balance: ", userBalance);

    }
}
