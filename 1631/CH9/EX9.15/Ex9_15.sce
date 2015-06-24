//Caption: information rate
//Example 9.15
//page no 403
//Find information rate of the source
//all symbols are equally likely
clc;
clear;
px1=1/2;
px2=1/2;
px3=1/2;
px4=1/2;
f=input("Enter the frequncy of system fm(in Hz) =");
HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4);


printf("\n Entropy H(X) =%d bits/symbol\n ",HX);
R=2*f*HX;
printf("\n information rate =%d bits/sec",R);

