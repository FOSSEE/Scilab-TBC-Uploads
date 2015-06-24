// Example 1.4: Contact difference of potential
clc, clear
N=5e22; // Number of acceptor or donor atoms per metres cube of step graded p-n junction
ni=1.45e16; // Intrinsic carrier concentration in inverse metres cube
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
Vo=VT*log(N^2/ni^2); // Contact difference of potential in volts
Vo=Vo*1e3; // Contact difference of potential in milivolts
disp(Vo,"Contact difference of potential (mV) = ");