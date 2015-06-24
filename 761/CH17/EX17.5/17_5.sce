clc;
//page no 628
//prob no. 17.5
//determination of characteristic impedance of waveguide with given 5GHz freq
f=5*10^9;fc=3.75*10^9;//Refering in eg. 17.4
Zo=377/sqrt(1-(fc/f)^2);
disp('ohm',Zo,'The characteristic impedance of waveguide is');