//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "src/MoodNft.sol";
import {Base64} from "lib/openzeppelin-contracts/contracts/utils/Base64.sol";

contract DeployMoodNftFlippingMood is Script {
    function run() external returns (MoodNft) {
        string memory sadSvg = vm.readFile("./img/sad.svg");
        string memory happySvg = vm.readFile("./img/happy.svg");
        uint256 tokenIdSadSvg = 0;
        uint256 tokenIdHappySvg = 1;
        vm.startBroadcast();
        MoodNft moodNft = new MoodNft(svgToImageURI(sadSvg), svgToImageURI(happySvg));
        moodNft.mintNft();
        moodNft.mintNft();
        moodNft.flipMood(tokenIdSadSvg);
        moodNft.flipMood(tokenIdHappySvg);
        vm.stopBroadcast();
        return moodNft;
    }

    function svgToImageURI(string memory svg) public pure returns (string memory) {
        //example
        //<svg width="1024px" height="1024px".....>
        //and returns this =====> data:image/svg+xml;base64,PD94bWwgdmVyc2lv......
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(bytes(string(abi.encodePacked(svg))));
        return string(abi.encodePacked(baseURL, svgBase64Encoded));
    }
}
