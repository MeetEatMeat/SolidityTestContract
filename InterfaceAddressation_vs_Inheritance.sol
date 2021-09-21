pragma solidity ^0.8;

contract InterfaceAddressation{
    
    event tested (string, address, string, address);
    
    function returnCallerAddress() public returns(address){
        address origin = tx.origin;
        address sender = msg.sender;
        emit tested("tx.origin address is: ", origin, "msg.sender address is: ", sender);
        return sender;
    }
    
    function showMyAddress() public view returns(address){
        return address(this);
    }
}

interface IInterfaceAddressation{
    function returnCallerAddress() external returns(address);
    function showMyAddress() external view returns(address);
}

contract TestAddressation is InterfaceAddressation {
    
    IInterfaceAddressation _interface;
    
    constructor(address interfaceOriginAddress) {
        _interface = IInterfaceAddressation(interfaceOriginAddress);
    }
    
    function testInterfaceAddressation() public returns(address){
        return _interface.returnCallerAddress();
    }
    
    function testInheritanceAddressation() public returns(address){
        return returnCallerAddress();
    }
    
}
