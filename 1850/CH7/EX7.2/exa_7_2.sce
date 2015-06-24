// Exa 7.2
clc;
clear;
close;
//given data
f=1;// in kHz
f=f*10^3;// in Hz
V_CC= 10;// in volt
I_B_max= 500;// in nA (for 741 IC op-amp)
I_B_max= I_B_max*10^-9;// in A
I1= 100*I_B_max;// in A
V_out= (V_CC-1);// in volt
V_in= V_out/29;
R1= V_in/I1;// in ohm
R1=R1*10^-3;//in k ohm
// 5.6 k ohm resistor may be used for R1, being standard value resistor
R1=5.6;// in k ohm (standard value)
A=29;
R_f= A*R1;
// 180 k ohm resistor may be used to provide A > 29
R_f=180;// in k ohm (standard value)
R_comp= R_f;
R=R1;// in k ohm
R=R*10^3;// in ohm
C=1/(2*%pi*f*R*sqrt(6));// in F
C=C*10^6;// in micro F
disp(R_comp,"Value of R_comp and R_f in kohm");
disp(R*10^-3,"Value of R and R1 in kohm");
disp(C,"Used capacitor in micro F")




