//Example 6.28
//Program to calculate FIR Filter coefficients for the direct form structure
//k1=1/2 , k2=1/3 , k3=1/4 
clear;
clc ;
close ;
U=1;
k1=1/2;
k2=1/3;
k3=1/4;
a(3+U,0+U)=1;
a(1+U,1+U)=k1;
a(2+U,2+U)=k2;
a(3+U,3+U)=k3;
m=2,k=1;
a(m+U,k+U)=a(m-1+U,k+U)+a(m+U,m+U)*a(m-1+U,m-k+U);
m=3,k=1;
a(m+U,k+U)=a(m-1+U,k+U)+a(m+U,m+U)*a(m-1+U,m-k+U);
m=3,k=2;
a(m+U,k+U)=a(m-1+U,k+U)+a(m+U,m+U)*a(m-1+U,m-k+U);
disp(a(3+U,0+U),'a(3,0)');
disp(a(3+U,1+U),'a(3,1)');
disp(a(3+U,2+U),'a(3,2)');
disp(a(3+U,3+U),'a(3,3)');