//chapter 2 Ex 20
clc;
clear;
close;
n1=5; n2=6; n3=7; n4=8; rem=3;
n=lcm(int32([n1,n2,n3,n4]));
k=2;
num=n*k+rem; //the number is in the form of (quotient*dividend+remainder)
mprintf("The least such number is %d",num);
