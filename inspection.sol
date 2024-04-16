// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PitchInspector {
    string private pitchCondition = "Good";
    int private grassCoverage = 40;
    int private soilMoisture = 20;
    string pitchStatus;
 
    function inspectPitch(string memory conditionValue, int grassValue, int moistureValue) public returns (string memory){
        string memory conditionPitch = pitchCondition;
        if(keccak256(abi.encodePacked(conditionValue))==keccak256(abi.encodePacked(conditionPitch)) && grassValue<=grassCoverage && moistureValue<=soilMoisture){
            pitchStatus = "Good";
        }
        else{
            pitchStatus = "Bad";
        }
        return pitchStatus;
    }
 
}