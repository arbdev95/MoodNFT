// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "src/MoodNft.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";

contract MoodNftInteractions is Script {
    string public constant HAPPY_URI =
        "data:image/svg+xml;base64,Cjxzdmcgdmlld0JveD0iMCAwIDIwMCAyMDAiIHdpZHRoPSI0MDAiICBoZWlnaHQ9IjQwMCIgeG1s"
        "bnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8Y2lyY2xlIGN4PSIxMDAiIGN5PSIx"
        "MDAiIGZpbGw9InllbGxvdyIgcj0iNzgiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMyIv"
        "PgogIDxnIGNsYXNzPSJleWVzIj4KICAgIDxjaXJjbGUgY3g9IjcwIiBjeT0iODIiIHI9IjEyIi8+"
        "CiAgICA8Y2lyY2xlIGN4PSIxMjciIGN5PSI4MiIgcj0iMTIiLz4KICA8L2c+CiAgPHBhdGggZD0i"
        "bTEzNi44MSAxMTYuNTNjLjY5IDI2LjE3LTY0LjExIDQyLTgxLjUyLS43MyIgc3R5bGU9ImZpbGw6"
        "bm9uZTsgc3Ryb2tlOiBibGFjazsgc3Ryb2tlLXdpZHRoOiAzOyIvPgo8L3N2Zz4K";

    function run() external {
        address most_recently_deployed = DevOpsTools.get_most_recent_deployment(
            "MoodNft",
            block.chainid
        );

        mintTheNft(most_recently_deployed);
    }

    function mintTheNft(address contractAddress) public {
        console.log(contractAddress);
        vm.startBroadcast();
        MoodNft(contractAddress).mintNft();
        vm.stopBroadcast();
    }

    /*uint256 public constant TOKEN_ID_TO_FLIP = 0;

    function flipMoodNft(address moodNftAddress) public {
        vm.startBroadcast();
        MoodNft(moodNftAddress).flipMood(TOKEN_ID_TO_FLIP);
        vm.stopBroadcast();
    }*/
}

contract FlipMoodNft is Script {
    uint256 public constant TOKEN_ID_TO_FLIP = 0;

    function run() external {
        address mostRecentlyDeployedMoodNft = DevOpsTools
            .get_most_recent_deployment("MoodNft", block.chainid);
        flipMoodNft(mostRecentlyDeployedMoodNft);
    }

    function flipMoodNft(address contractAddress) public {
        vm.startBroadcast();
        MoodNft(contractAddress).flipMood(TOKEN_ID_TO_FLIP);
        vm.stopBroadcast();
    }
}
