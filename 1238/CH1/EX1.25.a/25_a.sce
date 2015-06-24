//subtraction using 1's complement//
//Example 25.a//
//subtraction in one's complement //
clc
//clears the window//
clear
//clears all the existing variables//
x='1011101'
y=bin2dec('1011101')
z=bin2dec('1101100')
c=bitcmp(z,7);//finding 1's complement//
a=y+c+1   
a=dec2bin(a-(bin2dec('1000000')))
//binary conversion//
disp('binary form of the number obtained by adding 1011101 to -1101100')
disp(a)
//result is displayed//

