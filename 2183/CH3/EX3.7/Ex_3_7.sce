//Example 3.7 //The loss
clc;
clear;
close;
//given data :
a=9.2;// in micro-m
b=8.4;// in micro-m
wo2=b/2;
wo1=a/2;
L=-10*log10(4*((wo2/wo1)+(wo1/wo2))^-2);
disp(L,"The loss,L(dB) = ")
// answer is wrong in textbook  
