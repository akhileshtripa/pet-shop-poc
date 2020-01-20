pragma solidity ^0.5.0;

import "truffle/assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contract/Adoption.sol";

contract testAdoptiion {
    
    // Testing the address of the adoption contract to be Tested.
    
    Adoption adoption=Adoption(DeployedAddresses.Adoption());
    
    // The id of the pet for testing.i.e.6 
    uint expectedPetId=6;
    
    // Expected owner of the adopted pet in this contract
    address expetedAdopter= address(this);
    
    function testUserAdoptPet() public {
        
        uint returnedId=adoption.adopt(expectedPetId);
        
        Assert.equals(returnedId, expectedPetId, "Addoption of the pet should match");
        
    }
    
}