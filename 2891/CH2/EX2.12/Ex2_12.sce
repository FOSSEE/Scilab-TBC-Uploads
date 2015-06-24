// Exa 2.12
clc;
clear;
close;
// given :
//H=cos(10^8*t-Beta*z)ay   // magnetic field in A/m
// E=377*cos(10^8*t-Beta*z)ax   // electric field in V/m
omega=10^8 // angular frequency in Hz
f=omega/(2*%pi) // frequency in Hz
v_0=3*10^8 // speed of light in m/s
lambda=v_0/f // wavelength in m
Beta=2*%pi/lambda // phase constant in rad/m
disp("eta_0= E/H = 377*cos(10^8*t-Beta*z)/cos(10^8*t-Beta*z) => E/H=377")
eta_0=abs(377) // intrinsic impedence in ohm
disp(eta_0,"intrinsic impedence in ohm:")
disp(f/10^6,"frequency in MHz:")
disp(Beta,"phase constant in rad/m:")
disp(lambda,"wavelength in m:")

//note : answer of lambda in book is rounded-off,it is 18.86 meter.
