//chapter 2 Ex 8

clc;
clear;
close;
n1=2; n2=8; n3=16; n4=10;
d1=3; d2=9; d3=81; d4=27;
VN=int32([n1 n2 n3 n4]);
VD=int32([d1 d2 d3 d4]);
HcfNum=gcd(VN);
LcmNum=lcm(VN);
HcfDen=gcd(VD);
LcmDen=lcm(VD);
mprintf("The HCF of fractions is %d/%.d.",HcfNum,LcmDen);
mprintf("The LCM of fractions is %.d/%d.",LcmNum,HcfDen);
