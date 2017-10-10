//chapter 2 Ex 14

clc;
clear;
close;
n1=62; n2=132; n3=237;
V=int32([n2-n1 n3-n2 n3-n1]); //since it leaves same reminder
Hcf=gcd(V);
mprintf("The largest such number is %d.",Hcf);
