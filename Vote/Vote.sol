// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting {
    struct Voter {
        bool voted;
    }
    
    mapping(address => Voter) public voters;
    mapping(Candidate => uint) public voteCount;
    
    enum Candidate {Alice, Bob, Charlie}
    
    function vote(Candidate candidate) public {
        require(!voters[msg.sender].voted, "You have already voted.");
        
        if (candidate == Candidate.Alice) {
            voteCount[Candidate.Alice]++;
        } else if (candidate == Candidate.Bob) {
            voteCount[Candidate.Bob]++;
        } else if (candidate == Candidate.Charlie) {
            voteCount[Candidate.Charlie]++;
        }
        
        voters[msg.sender].voted = true;
    }
    
    function getVoteCount(Candidate candidate) public view returns (uint) {
        if (candidate == Candidate.Alice) {
            return voteCount[Candidate.Alice];
        } else if (candidate == Candidate.Bob) {
            return voteCount[Candidate.Bob];
        } else if (candidate == Candidate.Charlie) {
            return voteCount[Candidate.Charlie];
        }
    }
}

