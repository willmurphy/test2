// Sample contract showing mortal pattern

contract MyContract (
       address public owner;


       function My contact() (
              owner = msg.sender;
)

       function kill() (
              if (msg.sender == owner) (
                  suicide (owner);
              )
       )
)



Box 5.30: Sample contract showing mortal pattern

contract Mortal (
    function kill () (
        if (msg.sender == owner) suicide (owner);
    )
)


contract MyContract is Mortal(
    :
    :
)
