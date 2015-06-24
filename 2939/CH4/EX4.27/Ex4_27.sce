
// Ex4_27
clc;

// Given:
t=110;// in min
a=10;//dpmg^-1
// Solution:
k=0.693/t;
N=a/k;// atoms of F18
mass=(N*18)/6.022*10^23;
mass1=(N*18*10^20)/(6.022*10^23);// in 10^-20 grams
printf("The no. of atoms produced is %f and its mass is %f*10^-20 grams",N,mass1)
