// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./NFTCollection.sol";

contract NFTCollectionFactory is Ownable {
    mapping(address => address[]) public userCollections;
    address[] public allCollections;

    constructor(address owner) Ownable(owner) {}

    event NFTCollectionFactory__CollectionCreated(
        address indexed creator, address indexed collectionAddress, string name, string symbol
    );

    function createCollection(string memory _tokenURI, string memory _name, string memory _symbol) external {
        NFTCollection newCollection = new NFTCollection(msg.sender, _tokenURI, _name, _symbol);
        userCollections[msg.sender].push(address(newCollection));
        allCollections.push(address(newCollection));
        emit NFTCollectionFactory__CollectionCreated(msg.sender, address(newCollection), _name, _symbol);
    }

    function getUserCollections(address user) external view returns (address[] memory) {
        return userCollections[user];
    }

    function getAllCollections() external view returns (address[] memory) {
        return allCollections;
    }
}
