//Example sec 5.2.2 c
//Routh array in scilab
clear;clc;
xdel(winsid());

s=poly(0,'s')
p=poly(0,'p')
C=s^5+s^4+2*s^3+2*s^2+3*s+5

//substituting "s=(1/p)" in B
//The resulting characteristic equation is

C1=5*p^5+3*p^4+2*p^3+2*p^2+p+1
routh_t(C1)
