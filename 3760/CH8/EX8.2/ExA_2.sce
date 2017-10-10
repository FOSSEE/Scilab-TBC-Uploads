clc;
ur=10000; // relative permeability of iron
lc=0.5; // core length
lg=4*10^-3; // air gap length
N=600; // number of turns
B=1.2; // desired flux density
uo=4*%pi*10^-7; // free space permeability
Ac=25*10^-4; // core area
mfc=(B*lc)/(uo*ur); // mmf for core
mfg=(B*lg)/uo; // mmf for air gap
mft=mfc+mfg; // net mmf
i=mft/N; 
printf('exciting current required to establish the desired flux is %f A',i);
