// Exa 3.5
clc;
clear;
close;
//given data
R_in= 2;// in  M ohm
R_in=R_in*10^6;// in ohm
R_out=75;// in  ohm
A=2*10^5;
f_o=5;// in Hz
// For voltage follower
B=1; // since R_f=0
A_f=1;
disp(A_f,"Voltage gain :");
R_inf= A*R_in;// in ohm
R_inf=R_inf*10^-9;// in G ohm
disp(R_inf,"Input resistance in G ohm");
R_outf= R_out/A;// in ohm
disp(R_outf,"Output resistance in ohm");
f_f= A*f_o;// in Hz
disp(f_f*10^-6,"Bandwidth in MHz");

