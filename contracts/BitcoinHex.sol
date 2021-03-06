pragma solidity ^0.4.23;
import "./StakeableToken.sol";

contract BitcoinHex is StakeableToken {
    string public name = "BitcoinHex"; 
    string public symbol = "BHX";
    uint public decimals = 18;

    constructor (
        address _originAddress,
        bytes32 _rootUTXOMerkleTreeHash,
        uint256 _maximumRedeemable,
        uint256 _totalBTCCirculationAtFork
    ) 
        public
    {
        launchTime = block.timestamp;
        origin = _originAddress;
        rootUTXOMerkleTreeHash = _rootUTXOMerkleTreeHash;
        maximumRedeemable = _maximumRedeemable;
        totalBTCCirculationAtFork = _totalBTCCirculationAtFork;
    }
}
