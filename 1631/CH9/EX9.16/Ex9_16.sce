//Caption: entropy ,information rate
//Example 9.16
//page no 404
//Find  source entropy ,information rate
clc;
clear;
//probability symbols
px1=1/2;
px2=1/4;
px3=1/8;
px4=1/16;
px5=1/16;
Tb=10^-3;
HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4)+px5*log2(1/px5);
printf("i) source entropy\n\n  \tH(X) = %.2f bits/symbol\n",HX);//source entropy
r=1/Tb;
R=r*HX;//information rate
printf("\n\n ii)information rate \n\n \t R = %d bits/sec",R);
