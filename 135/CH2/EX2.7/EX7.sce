// Example 2.7: Current, Diode voltage
clc, clear
VDD=5; // Applied voltage in volts
VD=0.7; // Diode voltage in volts
I1=1e-3; // Current in amperes at diode voltage = 0.7 V
R=1000; // R in ohms
deltaVD=0.1; // Change in diode voltage in volts for every decade change in current
ratioI=10; // Decade change in current
eta_VT=deltaVD/log(ratioI); // Product of η and VT
ID=(VDD-VD)/R; // Diode current in amperes
VD2=VD+eta_VT*log(ID/I1); // Diode voltage in volts
ID=ID*1e3; // Diode current in miliamperes
disp(ID,"Diode current (mA) = ");
disp(VD2,"Diode voltage (v) = ");