//chapter 22 Ex 13

clc;
clear;
close;
Sum1=6690; t1=3; Sum2=10035; t2=6;
rate=((nthroot((Sum2/Sum1),(t2-t1)))-1);
p=Sum1/(1+rate)^t1;
mprintf("The Sum is %.0f",p);
