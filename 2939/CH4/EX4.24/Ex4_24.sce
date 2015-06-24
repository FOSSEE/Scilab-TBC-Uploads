
// Ex4_24
clc;

// Given:
a1=6520;// c/min
a2=4820;//c/min
t=2;//min
// Solution:
k=log(a1/a2)/t;
t1=0.693/k;// half life
printf("The decay constant is %f min^-1 and the half life is %f min",k,t1)
