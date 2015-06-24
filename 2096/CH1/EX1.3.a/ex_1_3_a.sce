
// Example 1.3.a : absolute error and correction
clc, clear
// given :
vm=2.65; // in volts
vt=2.70; // in volts
Es=vm-vt;
Cs=-Es;
disp(Es,"absolute error,Es = (V)")
disp(Cs,"correction,Cs = (V)")
