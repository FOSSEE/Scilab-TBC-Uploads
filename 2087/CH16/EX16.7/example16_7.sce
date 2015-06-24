

//example 16.7
//calculate annual average rainfall
clc;funcprot(0);
//given
L=50;         //spacing between drains
k=1D-5;       //permeability coefficient
a=10;
b=10.3;

Q=4*k*(b^2-a^2)/L;
Pav=Q*24*3600*100*100/L;
mprintf("annual average rainfall=%i cm",Pav);

