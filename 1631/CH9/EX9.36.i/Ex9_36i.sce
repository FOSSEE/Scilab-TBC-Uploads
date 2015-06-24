//Caption: information rate
//Example 9.36i
//page no 427
//Find information rate
//assume that  succeissive samples are statistically independent
clear;
clc;
fm=4000;
fs=2*fm;
n=1.25;
r=fs*n;
pxi=1/256;
HX=-log2(pxi);
R=r*HX;
printf("Information Rate \n\n \t R= %d kb/s",R/1000)
