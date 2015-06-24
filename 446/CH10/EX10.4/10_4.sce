clear
clc
disp('Exa-10.4(a)'); //theoretical
printf('The energy of interaction with magnetic field is given by uB and the degeneracy of the states are +-1/2 which are identical.\nThe ratio is therefore pE2/pE1 which gives e^(-2*u*B/k*T)');
disp('Ex-10.4(b)');
uB=5.79*10^-4;        //for a typical atom
t=1.1;k=8.65*10^-5;   //ratio and constant k
T=2*uB/(log(t)*k);    //temperature
printf('The value of temperature ar which the given ratio exists is %.2f K',T);
