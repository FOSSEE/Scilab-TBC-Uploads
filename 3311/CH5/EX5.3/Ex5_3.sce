// chapter 5
// example 5.3
// Determine series resistance and safe highest frequency
// page-175
clear;
clc;
// given
I_T=120; // in A (total current)
C_gs1=2200; // in pF (gate to source capacitance of MOSFET 1)
C_gd1=390; // in pF (gate to drain capacitance of MOSFET 1)
L_g1=2; // in nH (stray inductance of MOSFET 1)
C_gs2=2700; // in pF (gate to source capacitance of MOSFET 2)
C_gd2=330; // in pF (gate to drain capacitance of MOSFET 2)
L_g2=2.3; // in nH (stray inductance of MOSFET 2)
// calculate
C_gs1=C_gs1*1E-12; // changing unit from pF to F
C_gd1=C_gd1*1E-12; // changing unit from pF to F
L_g1=L_g1*1E-9; // changing unit from nF to F
C_gs2=C_gs2*1E-12; // changing unit from pF to F
C_gd2=C_gd2*1E-12; // changing unit from pF to F
L_g2=L_g2*1E-9; // changing unit from nF to F
f1=1/(2*%pi*sqrt(L_g1*(C_gs1+C_gd1))); // calculation of oscillating frequency of MOSFET 1
f2=1/(2*%pi*sqrt(L_g2*(C_gs2+C_gd2))); // calculation of oscillating frequency of MOSFET 1
f_h=min(f1,f2)/10; // calculation of safe highest frequency
Rg=1/(2*%pi*(C_gs1+C_gd1)*f_h); // calculation of series resistance in the gate
f_h=f_h*1E-6; // changing unit from Hz to MHz
printf("\nThe oscillating frequency of MOSFET 1 is \t f1=%.2E Hz",f1);
printf("\nThe oscillating frequency of MOSFET 2 is \t f2=%.2E Hz",f2);
printf("\n\n Since the safe highest frequency should be at least 1 decade lower than oscillating frequency, therefore the safe highest frequency is \t %.f MHz",f_h);
printf("\n\nThe series resistance in the gate terminal of both MOSFET is \t Rg=%.2f ohm",Rg);
// Note: The answer for the series resistance varies due to precise calculation