//example 2.8(a)//
//one's complement of binary number//
clc
//clears the screen//
clear
//clears all the existing variables//
x=bin2dec('0100111001')
//entering the data in binary form//
ans=dec2bin(bitcmp(x,10))
disp(ans);
//result will be displayed//