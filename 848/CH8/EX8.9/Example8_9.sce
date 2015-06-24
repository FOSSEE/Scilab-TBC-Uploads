//clear//
//Caption: Percent overhead to the inforamtion stream Using Reed-Solomon code for error correction
//Example8.9
//page 309
clear;
clc;
close;
S =8; //Reed-Solomon code with 1 byte
n = (2^S-1); // length of coded sequence
k = 239; //length of message sequence
r = n-k;
disp(r,'number of redundant bytes r =')
disp((r/k)*100,'Percent overhead =')
//Result
//number of redundant bytes r = 16.  
//  Percent overhead =       6.6945607 
