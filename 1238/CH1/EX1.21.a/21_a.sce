//subtraction using 1's complement//
//Example 21.a//
//subtraction in one's complement using 8 bits//
clc
//clears the window//
clear
//clears all the existing variables//
x='11001'
y=bin2dec('11001')
z=bin2dec('10110')
c=(bitcmp(z,5));//finding 1's complement//
a=y+c+1
a=a-bin2dec('100000')
a=dec2bin(a,5);//converting the result to binary equivalent//
disp('the subtraction of two numbers give:')
disp(a);//displaying the result//
