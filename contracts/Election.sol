pragma solidity ^0.5.0;

/**
 * The Election contract does this and that...
 */
contract Election {
	// Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }//Tells Solidity the infor that Candidate would take
    // Read/write Candidates
    mapping(uint => Candidate) public candidates;
    //The above creates a candidates array that maps an integer as a key to each Candidate (Value)
	
    //Store candidate counts
    uint public candidatesCount;

    //Since there is no way to find the count of a mapping because it gives non-existent mappings a default zero value in hexadecimal
    //We do it this way
    function addCandidate (string memory name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, name, 0);//Based on our initial struct
    }

    //Now let's run our constructor

    constructor () public{
    	addCandidate("Candidate 1");
    	addCandidate("Candidate 2");
    }
}