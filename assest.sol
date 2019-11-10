pragma solidity ^0.4.2;

contract AssetTracker {
    
    string id;
    
    function setId(string serial) public{
        id = serial;
    }
    
    function getId() public constant returns(string){
        return id;
    }
    
    struct Asset  {
        string location_of_sale;
        string id;
        uint quantity; 
        string color;
        string location_of_purchase;
        
    }
    
    
    
    
     mapping(string=>Asset)  balances;
     
     
     function addAsset(string _location_of_sale, string _id, uint _quantity, string _color, string _location_of_purchase) public returns(string){
         balances[_id] = Asset(_location_of_sale, _id, _quantity, _color, _location_of_purchase);   
     }
     
     
     function getAsset(string id) public  returns(string){
         return balances[id].location_of_sale;
     }
     
     
}