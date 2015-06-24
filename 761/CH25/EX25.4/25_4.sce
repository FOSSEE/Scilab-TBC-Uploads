clc;
// page no 924
// prob no 25_4
Bl=500;//in MHz-km
L=5;//in km
// using the bandwidth-distance product formula dispersion is given as
D=500/Bl;
disp('ns/km',D,'Dispersion is');
// Total rise time is given as
T_rt= D*L;
disp('ns',T_rt,'Total rise time is');