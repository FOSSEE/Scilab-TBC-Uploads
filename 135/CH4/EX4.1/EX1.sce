// Example 4.1: New value of Ic
clc, clear
VA=100; // Early voltage in volts
VCE_old=1; // in volts
Ic_old=1e-3; // in amperes
VCE_new=11; // in volts
ro=VA/Ic_old; // Output resistance in ohms
Ic_new=(VCE_new-VCE_old+Ic_old*ro)/ro; // in amperes
Ic_new=Ic_new*1e3; // in miliamperes
disp(Ic_new,"New value of Ic (mA) =");