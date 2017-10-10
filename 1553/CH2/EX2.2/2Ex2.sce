//chapter 2 Ex 2

clc;
clear;
close;
n1=108; n2=288; n3=360;
V=int32([n1 n2 n3]);
Hcf=gcd(V);
mprintf("The HCF of given numbers is %d.",Hcf);
