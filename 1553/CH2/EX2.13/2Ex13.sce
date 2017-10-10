//chapter 2 Ex 12

clc;
clear;
close;
l1=1657; l2=2037; r1=6; r2=5; //given values
V=int32([(l1-r1) (l2-r2)]);
Hcf=gcd(V);
mprintf("The required number is %d",Hcf);
