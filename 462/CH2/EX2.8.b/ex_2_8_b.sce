//example 2.8(b)//
//one's complement of binary number//
clc
//clears the screen//
clear
//clears all the existing variables//
x=bin2dec('11011010')
//entering the data in binary form//
ans=dec2bin(bitcmp(x,8))
disp(ans);
//result will be displayed//