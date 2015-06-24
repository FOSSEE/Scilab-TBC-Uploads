// Example 16.4
format('v',6)
clc;
clear;
close;
// given data
A=100;
R_B= 39*10^3;// in Ω
r_in= 2*10^6;// in Ω
r_out= 75;// in Ω
Vin_off= 2*10^-3;// in V
I_B1= 90*10^-9;// in A
I_in_off= 20*10^-9;// in A
// The closed loop voltage gain 
B=1;// unit less
// The closed-loop input impedance
r_in_CL= (1+A*B)*r_in;// in Ω
r_in_CL= r_in_CL*10^-6;// in Mohm
disp(B,"The closed loop voltage gain is : ")
disp(r_in_CL,"The closed-loop input impedance in MΩ is : ")
A=100000;
// The closed-loop output impedance
r_out_CL= r_out/A;// in Ω
disp(r_out_CL,"The closed-loop output impedance in Ω is : ")
//Let V= V1-V2 = Vin_off+I_B1*R_B
V= Vin_off+I_B1*R_B;// in A
// The output offset voltage 
Voo_CL= A*V/A;// in V
Voo_CL= Voo_CL*10^3;// in mV
disp(Voo_CL,"The output offset voltage in mV is : ")
