//chapter 2 Ex 12

clc;
clear;
close;
l1=4*100+95; l2=9*100; l3=16*100+65; //converting lengths into cm
V=int32([l1 l2 l3]);
Hcf=gcd(V);
mprintf("The required length is %d cm",Hcf);
