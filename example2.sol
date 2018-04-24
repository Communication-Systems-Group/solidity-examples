pragma solidity ^0.4.23;

//the very second example
contract Example2 {
	struct Account {
		string addr;
		uint amount; //default is 256bits
	}

	uint counter;
	mapping (uint => Account) accounts;

    constructor(string addr) public {
        accounts[counter++] = Account(addr, 42);
    }

    function get(uint nr) public constant returns (string) {
        return accounts[nr].addr;
    }
}
