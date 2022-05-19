// SPDX-License-Identifier: MIT
pragma experimental ABIEncoderV2;
pragma solidity >=0.5.10 < 8.10.0;

contract SimpleStorage {
  string ipfsHash;

  event NewHash(address indexed from, uint256 timestamp, string message);

  struct HashDataObj {
    address waver; 
    string ipfsHash; 
    uint256 timestamp; 
  }

  HashDataObj[] hashobj;

  function set(string memory x) public {
    ipfsHash = x;

    hashobj.push(HashDataObj(msg.sender, x, block.timestamp));

    emit NewHash(msg.sender, block.timestamp, x);

  }

  function get() public view returns (string memory) {
    return ipfsHash;
  }

  function getAll() public view returns (HashDataObj[] memory) {
    return hashobj;
  }


}
