//subtraction using 2's complement//
//Example 22.a//
//subtraction using 2's complement//
clc
//clears the console//
clear
//clears all exisiting variables//
a=bin2dec('11011')
b=bin2dec('11001')   
x=bitcmp(b,5)
//complement of the numbers//
z=1
u=x+z
//1 is added to the complements//
w=u+a
w=w-bin2dec('100000')
w=dec2bin(w);//coverting to binary form//
disp('the subtraction of two binary numbers give:')
disp(w);//displaying the result//

