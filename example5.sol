pragma solidity ^0.4.23;

//the very fifth example
contract Example5 {

    event Message(
        string msg
    );

    mapping (address => uint) accounts;

    function deposit() public payable {
        accounts[msg.sender] += msg.value;
        emit Message("deposit!");
    }

    function withdraw(uint amount) public returns (bool){
        assert(amount <= accounts[msg.sender]); //SafeMath!
        if(accounts[msg.sender] >= amount) {
            accounts[msg.sender]-= amount;
            if(msg.sender.send(amount)) {
                emit Message("withdraw!");
                return true;
            }
        }
        emit Message("no withdraw!");
        return false;
    }
}
