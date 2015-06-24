
// Ex4_35
clc;

// Given:

t1=2.7;// h
t2=3.6;// h
// Solution:
k1=0.693/t1;
k2=.693/t2;

tmax=(log(k2/k1))/(k2-k1);
printf("The time when daughter activity reaches maximum is %f and this is same when activities of both are equal.",tmax)
