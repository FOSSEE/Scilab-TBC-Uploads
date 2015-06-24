
// Example 1.b : static correction
clc, clear
// given :
vm=112.68; // voltmeter in volts
vt=112.6; // voltage in volts
Es=vm-vt;
Cs=-Es;
disp(Cs,"static corection,Cs = (V)")
