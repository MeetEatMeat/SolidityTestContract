pragma solidity ^0.8;

contract TestTxOrigin{
    
    event tested (string, address, string, address);
    
    function returnSenderAddress() public returns(address){
        address origin = tx.origin;
        address sender = msg.sender;
        emit tested("tx.origin address is: ", origin, "msg.sender address is: ", sender);
        return origin;
    }
    
    function showMyAddress() public view returns(address){
        return address(this);
    }
}

contract AttackingContract {
    
    TestTxOrigin testTxOrigin;
    
    constructor(address TestTxOriginAddress) {
        testTxOrigin = TestTxOrigin(TestTxOriginAddress);
    }

    receive() external payable {
        testTxOrigin.returnSenderAddress();
    }
    
    function showMyAddress() public view returns(address){
        return address(this);
    }
}
