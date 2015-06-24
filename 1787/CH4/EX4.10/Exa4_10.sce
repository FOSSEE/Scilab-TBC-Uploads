//Exa4.10
clc;
clear;
close;
//In given circuit :
V=15;//in volts
Vo=0.7;//in Volts
R=7;//in Kohm
I=(V-2*Vo)/R
disp("Since diode is silicon one, and the barrier potential for Si diode is 0.7 volt, Vo = 0.7 volts ");
disp("This barrier potential acts in opposite direction to the applied voltage. The diode forward resistance is being assumed to be zero.");
I=(V-2*Vo)/R;//in mAmpere
disp("Barrier potential of Si diode, Vo = 0.7 Volts");
disp("Potential VA = Voltage drop across 7 Kohm resistor");
VA=I*R;//in Volts
disp(VA,"Voltagee VA in volts : ");