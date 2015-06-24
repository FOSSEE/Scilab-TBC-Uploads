// Exa 3.3
clc;
clear;
close;
//given data
R1=100;// in  ohm
R_f=100;// in k ohm
R_f=R_f*10^3;// in ohm
A=2*10^5;
R_in= 2;// in M ohm
R_in=R_in*10^6;// in ohm
R_out= 75;// in ohm
f_o= 5;// in Hz
B= R1/(R1+R_f);
FeedbackFactor= A*B;
A_f = 1+R_f/R1;
disp(A_f,"Voltage gain")
R_inf= R_in*(1+A*B);
disp(R_inf*10^-6,"Input Resistance in M ohm")
R_outf= R_out/(1+A*B);// in ohm
disp(R_outf,"Output Resistance in ohm");
f_f= f_o*(1+A*B);// in Hz
disp(f_f,"Bandwidth in Hz");
