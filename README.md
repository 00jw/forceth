# forceth

A factory contract that creates a child and self destructs it to a destination,
forcing the ether sent to the child on creation to be deposited at the destination
address.

This can be used to send ether to a contract that has no payable function, or
would have an undesirable result should a normal ether transfer be made
