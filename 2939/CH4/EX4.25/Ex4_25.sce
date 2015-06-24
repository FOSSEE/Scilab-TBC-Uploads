
// Ex4_25
clc;
// Given:
a=(1/32);// activity drop of its initial value
t1=7.5;//in h case(a)
t2=64.45;// in min case(b)
// Solution:
n=log(a)/log(0.5);
t11=t1/n;// half life
t12=t2/n;// half life
printf("The half life for case (a)is %f h and case(b) is %f min",t11,t12)
