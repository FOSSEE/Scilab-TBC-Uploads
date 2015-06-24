// Exa 3.21
clc;
clear;
close;
// Given data
R1=3.3;// in k ohm
R1=R1*10^3;// in ohm
R2=R1;
R_p= 2.5;// in k ohm
R_p =R_p*10^3;// in ohm
R3=1.2;// in k ohm
R3=R3*10^3;// in ohm
R4=R3;
R_f= 3.9;// in k ohm
R_f =R_f*10^3;// in ohm
R5=R_f;
R_in= 2;// in M ohm
R_in= R_in*10^6;// in ohm
R_out= 75;// in ohm
A=2*10^5;
f_o= 5;// in Hz
A_d= -1*(1+2*R1/R_p)*R_f/R3;
disp(A_d,"Voltage gain ");
A_d=abs(A_d);
R_inf= R_in*(1+(R1+R_p)/(2*R1+R_p)*A);// in ohm
disp(R_inf*10^-9,"Input resistance in G ohm")
R_outf= R_out/(1+A/A_d);// in ohm
disp(R_outf,"Output voltage in ohm")
f_f= A*f_o/A_d;// in Hz
disp(f_f*10^-3,"Bandwidth in kHz");
