//chapter 2 Ex 3

clc;
clear;
close;
n1=513; n2=1134; n3=1215;
V=int32([n1 n2 n3]);
Hcf=gcd(V);
mprintf("The HCF of given numbers is %d.",Hcf);
