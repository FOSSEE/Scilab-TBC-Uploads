// Example 4.7: Value of RC to obtain VC = +5 V
clc, clear
betaf=50; // Current gain
disp("Let us assume that the transistor is in active region.");
disp("When current gain = 50")
VBE_active=-0.7; // in volts
// From Fig. 4.24
VC=5; // in volts
VEE=10; // in volts
RB=100e3; // in ohms
// Writing KVL for base circuit and putting Ic= βF*Ib
IB=(VEE+VBE_active)/RB; // in amperes
IC=IB*betaf; // in amperes
RC=VC/IC; // in ohms
RC=RC*1e-3; // in kilo-ohms
disp(RC,"Value of RC to obtain VC = +5 V (kΩ) =");
disp("When current gain = 100");
IC=IB*100; // in amperes
VC=IC*RC*1e3; // in volts
disp(VC,"Collector voltage (V) =");
disp("Since collector voltage is greater than the base voltage, the transistor goes into saturation as collector junction gets forward biased.");