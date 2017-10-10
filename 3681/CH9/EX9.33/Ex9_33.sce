// Calculating the maximum armature voltage
clc;
disp('Example 9.33, Page No. = 9.92')
// Given Data
Vc = 40;// Peripheral speed of commutator (in meter per second)
Ec = 20;// Average emf between adjacent segments (in Volts)
Bc = 4;// Minimum pitch of commutator segments (in mm)
f = 40;// Frequency (in Hz)
// Calculation of the maximum armature voltage
E = Vc*Ec/(2*f*Bc*10^(-3));//  Maximum armature voltage (in Volts)
disp(E,'Maximum armature voltage (Volts)=');
//in book answer is 2500 Volts.  The answers vary due to round off error
