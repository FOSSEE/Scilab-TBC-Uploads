//Exa 1.5
clc;
clear;
close;
//given data
a=4.75;//lattice constant in Angstrum
a=a*10^-10;//in meter
disp("Surface density in FCC on (111)Plane : dp = 2.31/a^2");
dp=2.31/a^2;//in atom/m^2
dp=dp/10^6;//in atom/mm^2
disp(dp,"Surface density in FCC on (111)Plane in atoms/mm^2: ");