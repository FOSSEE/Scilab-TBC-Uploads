clear;
clc;
disp("--------------Example 20.2---------------")
HLEN="1000";
d=bin2dec(HLEN); //convert to decimal
bytes=d*4; // formula
base_header=20;
options=bytes-base_header; // formula
printf("The total number of bytes in the header is %d bytes.The first %d bytes are the base header, the next %d bytes are the options.",bytes,base_header,options); // display result
