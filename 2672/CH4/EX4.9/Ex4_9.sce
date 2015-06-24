//Example 4_9
clc;
clear;
close;
format('v',6)
//given data : 
//me=2*mh
meBYmh=2;//ratio
T=300;//K
kT=0.026;//eV//at room temperature/T=300 K
//EF=3/4*kT*log(1/meBYmh)-EG/2
//position of fermi level below centre of forbidden gap
EF=-3/4*kT*log(1/meBYmh);//eV
disp(EF,"Position of fermi level below centre of forbidden gap by (eV) : ");
