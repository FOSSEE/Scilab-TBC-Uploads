// Example 4.6: Vo1, Vo2
clc, clear
betaf=100; // Current gain
disp("Let us assume that the transistor is in active region.");
VBE_active=-0.7; // in volts
// From Fig. 4.23
VCC=-10; // in volts
VEE=10; // in volts
VBB=2.5; // in volts
RE=6.8e3; // in ohms
RB=100e3; // in ohms
RC=10e3; // in ohms
// Writing KVL for base-emitter circuit and putting Ic= βF*Ib
IB=(VEE-VBB+VBE_active)/(RB+(1+betaf)*RE); // in amperes

IC=betaf*IB; // in amperes
IE=IB+IC; // in amperes
Vo1=VCC+IC*RC; // in volts
Vo2=VEE-IE*RE; // in volts
VB=VBB+IB*RB; // in volts
disp(Vo1,"Vo1 (V) =");
disp(Vo2,"Vo2 (V) =");
disp(VB,"Voltage at base (V) =")
disp("As base voltage, VB is 3.36 V and voltage at collector is -1.4 V, collector base junction is reverse biased. Thus the transistor is indeed in active region as assumed.")