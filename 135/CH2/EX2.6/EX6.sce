// Example 2.6: R
clc, clear
// In the circuit given in Fig. 2.7
V=50e-3; // Output voltage
VD1=0.7; // Voltage across diode 1 in volts
I1=10e-3; // Current through diode 1 at 0.7 V in amperes
VD2=0.8; // Voltage across diode 2 in volts
I2=100e-3; // Current through diode 2 at 0.8 V in amperes
eta_VT=(VD2-VD1)/log(I2/I1); // Product of η and VT
I=10e-3/(%e^(V/eta_VT)+1); // Current through diode 1 in amperes
R=V/I;
disp(R,"R (Ω) = ");