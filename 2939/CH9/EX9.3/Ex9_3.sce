//Ex9_3
clc;
//Given:
f=1.0014;// seperation factor
s=4;// series
p=6;// parallel

// Note: The global yield for s stages in series is(f)^s and each parallel stages simply multiplies the yield of the stage, Hence overall yield with p parallel stages (each with s stages in series) will be Y=p*(f)^s

//Solution:
Y=p*(f)^s;

printf("The net yield is = %f",Y)
