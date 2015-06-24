//to find probable no of resistors

clc;
x=.15;    //deviation 
o=.1;    //standard deviation
t=x/o;
A=.4432    //area under gaussian curve corresponding to t
n=2*A*1000;
disp(floor(n),'no of resistors');