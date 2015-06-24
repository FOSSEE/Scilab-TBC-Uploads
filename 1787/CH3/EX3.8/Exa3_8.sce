//Exa 3.8
clc;
clear;
close;
//given data
ND=10^21;//in m^-3
NA=10^22;//in m^-3
De=3.4*10^-3;//in m^2-s^-1
Dh=1.2*10^-3;//in m^2-s^-1
Le=7.1*10^-4;//in meters
Lh=3.5*10^-4;//in meters
ni=1.6*10^16;//in m^-3
e=1.602*10^-19;//constant
IoA=e*ni^2*(Dh/(Lh*ND)+De/(Le*NA));
disp(IoA*10^6,"Reverse saturation current density in uA/m2 is ")