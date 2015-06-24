clc;
// page no 924
// prob no 25_5
T_Rrx=3*10^-9;
T_Rtx=2*10^-9;
fb=100*10^6;//in bps
L=25;//in km
T_RT = 1/(2*fb)
// we have to compute rise time therefore
T_rf= sqrt(T_RT^2 - T_Rtx^2 - T_Rrx^2)
// dispersion per km is
D= T_rf/L;
disp('ns/km',D/10^-9,'The maximum acceptable dispersion is');
// using the bandwidth-distance product
Bl=500/D;
disp('MHz-km',Bl*10^-9,'The bandwidth-distance product is ');