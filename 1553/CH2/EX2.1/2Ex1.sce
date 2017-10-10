//chapter 2 Ex 1

clc;
clear;
close;
n1=2^3*3^2*5*7^4; n2=2^2*3^5*5^2*7^3; n3=2^3*5^3*7^2;
V=int32([n1 n2 n3]);
Lcm=gcd(V);
mprintf("The LCM of given numbers is %d.",Lcm);
