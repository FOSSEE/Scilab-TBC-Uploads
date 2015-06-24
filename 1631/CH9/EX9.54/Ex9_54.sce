//Caption:  Entropy
//Example 9.54
//Pge no 443
//Find entropy of source 
clear;
clc;
S0=1/3;
S1=1/6;
S2=1/4;
S3=1/4

HX=S0*log2(1/S0)+S1*log2(1/S1)+S2*log2(1/S2)+S3*log2(1/S3);// EntroSy of source

printf("\n \t i)Entropy of system \n\n \t  H(X)=%.4f bits/symbol\n",HX);

