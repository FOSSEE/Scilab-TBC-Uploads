//Example 5.10
//page 327
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=poly(2,'s');
//substitution of s-2 for s
    
P=(1+(5/s))*((s+3)/(s^2+2*s+2));
k=poly(0,'k')
//routh array
r=routh_t(P,k)
disp(r,"Routh Array")
kval=kpure(P)
mprintf('%g <K , is range of gain for closed loop poles to satisfy Re(s)<-2',kval(1))

