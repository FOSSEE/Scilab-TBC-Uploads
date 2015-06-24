clear;
clc;
disp("--------------Example 20.1---------------")
// 01000010  - first 8 bits of IP4 packet
p="01000010";
s=strsplit(p,4); // split into two
v=bin2dec(s(1)); // version 
d=bin2dec(s(2)); // header length 
bytes=d*4; // formula
if(((bytes > = 20 )&((v == 4) |(v == 6)))) //minimum number of bytes is 20 and version should be IP4 or IP6
    printf("The packet is accepted .");
else
    printf("There is an error in this packet. The 4 leftmost bits %s show the version, which is correct.\nThe next 4 bits %s show an invalid header length %d. The minimum number of bytes in the header must be 20.\nThe packet has been corrupted in transmission.",s(1),s(2),bytes); // display result
