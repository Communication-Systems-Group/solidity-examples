pragma solidity ^0.4.23;

//the very third example
contract Example3 {
    struct Account {
        string addr;
        uint amount; //default is 256bits
    }

    uint counter;
    mapping (uint => Account) accounts;
    address owner;

    constructor(string addr) public {
        accounts[counter++] = Account(addr, 42);
        owner = msg.sender;
    }

    function get(uint nr) public constant returns (string) {
        return accounts[nr].addr;
    }

    function set(uint nr, string addr) public {
        require(owner == msg.sender);
        accounts[counter++] = Account(addr, nr);
    }
}
