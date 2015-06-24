// Exa 3.19
clc;
clear;
close;
// Given data
R1=540;// in ohm
R3=R1;
R_f=5.4;// in k ohm
R_f=R_f*10^3;// in ohm
R2=R_f;// in ohm
v_in1= -2.5;// in volt
v_in2= -3.5;// in volt
R_in=2;// in M ohm
R_in= R_in*10^6;// in ohm
A=2*10^5;
A_d= (1+R_f/R1);
disp(A_d,"Voltage gain : ");
v_out=A_d*(v_in1-v_in2);// in volt
disp(v_out,"Output voltage in volt");
R_inf1= R_in*(1+A*R1/(R1+R_f));
R_inf2= R_in*(1+A*R2/(R2+R3));
disp("Internal resistance : "+string(R_inf1)+" ohm and "+string(R_inf2)+" ohm   ");
