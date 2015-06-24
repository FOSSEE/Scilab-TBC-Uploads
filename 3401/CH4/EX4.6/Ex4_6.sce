clc

nf=2
T=300 //K
Nc=2.8*10**19 //cm^-3

//n0=(2/sqrt(%pi))*Nc*F12(nf)
//x=F12(nf)=2.3
x=2.3
n0=(2/sqrt(%pi))*Nc*x
disp(n0,"n0 in cm^-3 is= ")
