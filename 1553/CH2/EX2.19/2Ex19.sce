//chapter 2 Ex 19
clc;
clear;
close;
n1=20; n2=25; n3=35; n4=40;
n=lcm(int32([n1,n2,n3,n4]));
rem=6;
mprintf("The least such number is %d",n-rem);
