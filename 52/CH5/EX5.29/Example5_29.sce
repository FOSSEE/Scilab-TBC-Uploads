//Example 5.29
//Program to convert given IIR pole-zero Filter into Lattice Ladder Structure. 
clear;
clc ;
close ;
U=1;          //Zero Adjust
a(3+U,0+U)=1; 
a(3+U,1+U)=13/24; 
a(3+U,2+U)=5/8;
a(3+U,3+U)=1/3;
a(2+U,0+U)=1; //a(m,0)=1
a(2+U,3+U)=1/3;
m=3,k=1;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
m=3,k=2;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
m=2,k=1;
a(m-1+U,k+U)=(a(m+U,k+U)-a(m+U,m+U)*a(m+U,m-k+U))/(1-a(m+U,m+U)*a(m+U,m+U));
disp('LATTICE COEFFICIENTS');
disp(a(1+U,1+U),'k1');
disp(a(2+U,2+U),'k2');
disp(a(3+U,3+U),'k3');
b0=1;
b1=2;
b2=2;
b3=1;
c3=b3;
c2=b2-c3*a(3+U,1+U);
c1=b1-(c2*a(2+U,1+U)+c3*a(3+U,2+U));
c0=b0-(c1*a(1+U,1+U)+c2*a(2+U,2+U)+c3*a(3+U,3+U));
disp('LADDER COEFFICIENTS');
disp(c0,'c0 =');
disp(c1,'c1 =');
disp(c2,'c2 =');
disp(c3,'c3 =');