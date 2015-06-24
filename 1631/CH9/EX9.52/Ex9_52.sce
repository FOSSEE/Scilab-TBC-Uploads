//Caption:  Entropy
//Example 9.52
//Pge no 442
//Find entropy of source ,entropy of second order extension

clear;
clc;

P1=0.7;
P2=0.15;
P3=0.15;

HX=P1*log2(1/P1)+P2*log2(1/P2)+P3*log2(1/P3)// Entropy of source
printf("\n \t i)Entropy of system \n\n \t  H(X)=%.4f bits/symbol\n",HX);
//H(X^n)=n*H(X)
n=2;//for second order
HX2=n*HX;
printf("\n \t ii)Entropy of second order system extension of source can be");
printf(" \n\n \t  H(X^2)=%.4f bits/symbol\n",HX);
