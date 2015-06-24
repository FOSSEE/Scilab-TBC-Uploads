// Example 2.18: Diffusion length
clc, clear
I=1e-3; // Forward bias current in amperes
C=1e-6; // Diffusion capacitance in farads
Dp=13; // Diffusion constant for Si
eta=2; // for Si
VT=26e-3; // Voltage equivalent to temperatue at room temperature in volts
Lp=sqrt(C*Dp*eta*VT/I); // Diffusion length in metres
Lp=Lp*1e2; // Diffusion length in centimetres
disp(Lp,"Diffusion length (cm) =");