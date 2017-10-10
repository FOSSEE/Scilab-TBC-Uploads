//chapter 2 Ex 5

clc;
clear;
close;
n1=2^2*3^3*5*7^2; n2=2^3*3^2*5^2*7^4; n3=2**3*5^3*7*11;
V=int32([n1 n2 n3]);
Lcm=lcm(V);
mprintf("The LCM of given numbers is %d.",Lcm);
