//chapter 2 Ex 18
clc;
clear;
close;
n1=16; n2=24; n3=36; n4=54;
n=lcm(int32([n1,n2,n3,n4]));
Lcm=double(n);
small=10000; //smallest 5 digit number
remainder=pmodulo(small,Lcm);
smallest_num=small+n-remainder;
mprintf("The smallest such number is %d",smallest_num);
