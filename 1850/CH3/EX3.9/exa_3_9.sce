// Exa 3.9
clc;
clear;
close;
//given data
R1=5;// in  k ohm
R1=R1*10^3;// in ohm
R_f=500;// in k ohm
R_f=R_f*10^3;// in ohm
V_in= 0.1;// in volt
A_f = -R_f/R1;
OutPutResOfopamp=0;// in ohm
disp(A_f,"Voltage gain")
R_in= R1;// in ohm
disp(R_in*10^-3,"Input Resistance in k ohm")
R_out=OutPutResOfopamp;// in ohm
disp(R_out,"Output Resistance in ohm");
V_out= A_f*V_in;// in volt
disp(V_out,"Output voltage in volt");
I_in= V_in/R1;// in amp
disp(I_in*10^3,"Input Current in mA");


