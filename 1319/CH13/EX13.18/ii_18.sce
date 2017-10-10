//Compute the Loss per Kg at a particular frequency.
clc;
clear;

hy_ls=4.9;
f1=50;
maxflux=1;

density=7.5;

d=density*(10^6)/(10^3);

hy_ls_cycle= hy_ls*d/f1;

n=hy_ls_cycle/((maxflux)^1.7);

disp(n,'i) The value of the Co-Efficient= ' )

mflux2=1.8;

f2=25;

hy_ls2=hy_ls*(f2/f1)*((1.8)^1.7);

disp('watt/kg',hy_ls2,'ii) The Loss per kg at 25Hz and 1.8 Wb per square metre= ')
