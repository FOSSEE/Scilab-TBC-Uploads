//subtraction using 1's complement//
//Example 21.b//
//subtraction in one's complement using 8 bits//
clc
//clears the window//
clear
//clears all the existing variables//
x='1011'
y=bin2dec('1011')
z=bin2dec('0101')
c=(bitcmp(z,4));//finding 1's complement//
a=y+c+1
a=a-bin2dec('10000');
a=dec2bin(a,4);//converting the result to binary equivalent//
disp('the subtraction of two binary numbers give:')
disp(a);//displaying the result//
