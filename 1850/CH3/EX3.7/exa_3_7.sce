// Exa 3.7
clc;
clear;
close;
//given data
R_in= 2;// in  M ohm
R_in=R_in*10^6;// in ohm
R_out=75;// in  ohm
A=2*10^5;
f_o=5;// in Hz
R1=330;// in ohm (assuming)
R_f=R1;
B= R1/(R1+R_f);
A_f = -1;
disp(A_f,"Voltage gain")
R_inf= R1;
disp(R_inf,"Input Resistance in ohm")
R_outf= R_out/(A/2);// in ohm
disp(R_outf,"Output Resistance in ohm");
f_f= f_o*A/2;// in Hz
disp(f_f*10^-6,"Bandwidth in MHz");


