// Example 3.1: determine maximum output power
clc, clear;
Rl=80; // load resistance in ohm
alfa=5; // turn ratio
Ic=120; // collector current in milli-ampere
Rl1=alfa^2*Rl;
Imax=2*Ic;
Imin=0;
Irms=(1/sqrt(2))*((Imax-Imin)/2);
Pout=((Ic*10^-3)^2*Rl1)/2;
disp(Rl1,"load as seen by transformer primary (ohm) = ")
disp(Imax,"maximum current (mA) = ")
disp(Imin,"minimum current (mA) = ")
disp(Irms,"rms value of current (mA) = ")
disp(Pout,"maximum power output (W) = ") 














