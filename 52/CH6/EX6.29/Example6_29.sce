//Example 6.29
//Program to calculate given FIR Filter's Lattice form coefficients. 
clear;
clc ;
close ;
U=1;          //Zero Adjust
a(3+U,0+U)=1; 
a(3+U,1+U)=2/5; 
a(3+U,2+U)=3/4;
a(3+U,3+U)=1/3;
a(2+U,0+U)=1; //a(m,0)=1
a(2+U,3+U)=1/3;
m=3,k=1;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
m=3,k=2;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
m=2,k=1;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
disp(a(1+U,1+U),'k1');
disp(a(2+U,2+U),'k2');
disp(a(3+U,3+U),'k3');