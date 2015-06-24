// Example 3.12 : the percent second harmonic distortion
clc, clear;
Vcc=50; // voltage in volts
Vmin=5; // minimum voltage in volts
pi=3.142857; 
Pd=40; // total power dissipation in watt
Icmax=Pd/(((2*Vcc)/pi)-((Vcc-Vmin)/2));
Pin=(2/pi)*(Vcc*Icmax);
Pout=((Icmax/2)*(Vcc-Vmin));
eta=(Pout/Pin)*100;
disp(Icmax,"maximum collector current (A) = ")
disp(Pin,"total power input (W) = ")
disp(Pout,"ac power output (W) = ")
disp(eta,"conversion efficiency (%) = ")
