//example 9.4
clc;
clear;
//b= input('Enter the number of bits :');
//c= input('Enter the clock frequency in Mhz :');
b= 8; // given values 
c=10;
t= 1000/c;
printf('One clock period takes %d ns\n',t); //displying the results 
tt=t*b;
printf(' Time required by total bits required is %d ns',tt);
