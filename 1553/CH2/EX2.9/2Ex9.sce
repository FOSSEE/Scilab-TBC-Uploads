//chapter 2 Ex 9

clc;
clear;
close;
n1=0.63; n2=1.05; n3=2.1;
//V=int8([n1 n2 n3]);
Hcf=gcd(int32([n1 n2 n3]*100));
Lcm=lcm(int32([n1 n2 n3]*100))
mprintf("The HCF of given numbers is %1.2f",(double(Hcf)/100));
mprintf("\n The LCM of given numbers is %1.2f",(double(Lcm)/100));
