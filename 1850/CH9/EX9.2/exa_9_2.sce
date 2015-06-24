// Exa 9.2
clc;
clear;
close;
//given data
C=1;// in micro F
C=C*10^-6;// in  F
C1=0.01;// in micro F
C1=C1*10^-6;// in  F
R_A=4.7;// in kohm
R_B=1;// in kohm
R_A=R_A*10^3;// in ohm
R_B=R_B*10^3;// in ohm
T_on= 0.693*(R_A+R_B)*C;// in seconds
T_on=T_on*10^3;// in ms
disp(T_on,"Positive pulse width in mili seconds")
T_off= 0.693*R_B*C;// in seconds
T_off=T_off*10^3;// in ms
disp(T_off,"Negative pulse width in mili seconds")
f=1.4/((R_A+2*R_B)*C);// in Hz
disp(f,"Free running Frequency in Hz");
DutyCycle= (R_A+R_B)/(R_A+2*R_B)*100// in percent
disp(DutyCycle,"Duty cycle in percentage");
