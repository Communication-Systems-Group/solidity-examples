pragma solidity ^0.4.23;

//the very sixth example
contract Example6 {

    mapping (address => mapping (bytes32 => uint)) stamps;

    function store(bytes32 hash) public {
        stamps[msg.sender][hash] = block.timestamp;
    }

    function verify(address recipient, string data) public constant returns (uint) {
        return stamps[recipient][keccak256(data)];
    }
}
