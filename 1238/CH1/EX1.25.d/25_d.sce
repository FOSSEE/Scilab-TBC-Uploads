//subtraction using 1's complement//
//Example 25.d//
//subtraction in one's complement//
clc
//clears the window//
clear
//clears all the existing variables//
x=85
y=32
c=bitcmp(y,7);//finding 1's complement//
a=x+c+1
a=a-bin2dec('10000000')
res=dec2bin(a,7)
//binary conversion//
disp('binary form of the number obtained by adding 85 to -32')
disp(res)
//result is displayed//

 

