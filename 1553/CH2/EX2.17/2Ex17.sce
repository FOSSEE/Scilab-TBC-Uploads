//chapter 2 Ex 17
clc;
clear;
close;
n1=12; n2=15; n3=18; n4=27;
n=lcm(int32([n1,n2,n3,n4]));
Lcm=double(n);
large=9999; //largest 4 digit number
remainder=modulo(large,Lcm);
largest_num=large-remainder;
mprintf("The largest such number is %d",largest_num);
