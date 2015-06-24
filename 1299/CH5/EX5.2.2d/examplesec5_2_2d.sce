//Example sec 5.2.2 d
//Routh array in scilab
clear;clc;
xdel(winsid());

s=poly(0,'s')
D=2*s^6+2*s^5+3*s^4+3*s^3+2*s^2+s+1
routh_t(D)

D1=s^2+1
//dividing the main polynomial D by the auxillary polynomial D1
D/D1
D2=2*s^4+2*s^3+s^2+s+1
routh_t(D2)
