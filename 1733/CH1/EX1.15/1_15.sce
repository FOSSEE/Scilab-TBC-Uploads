//1.15
clc;
P=0.3;
Vs=12;
disp('Since load line has a slope of -100V/A, the source resistance for the gate is 100 ohm')
Rs=100;
// since Vs=Vg+Ig*Rs
// on solving Ig=35.5 mA
Ig=35.5*10^-3;
printf("\nGate current=%.4f A",Ig)
Vg=P/Ig;
printf("\nGate voltage=%.2f V",Vg)