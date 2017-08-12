// voting contract

//Contract source converted to a string
Var contractSource = *contract Voting {...}”;

//Compile contract
var contractCompiled = eth.complle.solidity{contractSource}; 

//Set event quota And ticket price 
var proposalNames - {“Alpha”, “Beta”, “Gamma”, “Delta”};
Var votingTime =  86400 //in seconds 

//Create contract
var myContract =
web3.eth.contract(contracrCompiled.Votinq.info.abiDefinition); 

//Deploy contract
var MyContractInstance - myContract.new(proposalnames, 
VotingTime, (from:web3.eth.accounts[01].
  data:contractCompiled.Voting.code, gas: 1000000 
},, function (e, contract) {
iff!e) [
if(!contract.address) {
console.log(“Contract  transaction  send:  TransactionHash:  * +
contract.transactionHash + * waiting to be mined…”); 
] else [
console.log(“Contract mined! Address: * + contract address);
)]]};

//contract transaction send:
//TransactlonHash:  0x41a3fdd60c6ec796dbl6dcae28d7908d534 
                990893d7e5elfc0e3295f9b36b049 waiting to be mined…

//contract mined! Address: Oxf0e5c493d414eel7e6b18298c167ca664ld3l5dl

// Send a  Call to check contract's state variable

>mycontractInstance.numProposals.call();
4
> myContractsInstance.votingtime.call(};
86400

// Send transaction to give right of voting
> myContractsInstance.giveRightToVote.sendtranaction(eth.account],
{from: eth.accounts(0), gas: 2000000})

// Send transaction to give vote
> myContractsInstance.vote.sendTranscription(2,
(from: eth.accounts{1], gas 20000001)

// check winning proposal
>myContractinstance.winningProposal.call()
12, *Dx47616d6100000000000000000000000000000000000000000000000000000000000”]

