clear;
clc;
disp("--------------Example 23.4----------------")
buffer_size=5000; //bytes
recieved_unprocessed = 1000; // bytes
rwnd=buffer_size-recieved_unprocessed ; // formula
printf("The value of rwnd = %d . Hence Host B can receive only %d bytes of data before overflowing its buffer.",rwnd,rwnd); // display result
