// Exa 2.27
clc;
clear;
close;
// given :
eta_0=377 // intrinsic impedance in free space in ohm
disp("E=sin(omega*t-beta*z)ax+2*sin(omega*t-beta*z+75)ay // electric field in V/m")
Ex=1// magnitude of Ex
Ey=2 // magnitude of Ey
E=sqrt(Ex^2+Ey^2) // resultant magnitude
Pav=(1/2)*E^2/(eta_0) // power per unit area conveyed by the wave in free space
disp(Pav*1000,"power per unit area conveyed by the wave in free space in mW/m^2:")
