//Exa:3.12
clc;
clear;
close;
alpha=0.4;//duty cycle
V_dc=200;//in volts
R=10;//in ohms
V_a=alpha*V_dc;
disp(V_a,'(a) Average Load Voltage (in volts)=');
I=V_a/R;
disp(I,'(b) Average thyristor current (in amperes)=');
I_d=0;
disp(I_d,'(c) Diode Current (in amperes)=');
R_eff=R/alpha;
disp(R_eff,'(d) Effective input resistance (in ohms)=')