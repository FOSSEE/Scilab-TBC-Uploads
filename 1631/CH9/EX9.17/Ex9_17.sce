
//Caption: entropy and information rate
//Example 9.17
//page no 404
//determine entropy ,information rate
//assume if there are 16 outcomes per second
clc;
clear;
px1=1/2;
px2=1/4;
px3=1/8;
px4=1/16;
px5=1/16;
r=16
HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4)+px5*log2(1/px5);

printf("i) Entropy\n\n  \tH(X) = %.2f bits/symbol\n",HX);//source entropy

R=r*HX;
printf("\n\n ii)information rate \n\n \t R = %d bits/sec",R);
