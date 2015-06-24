//Exa:3.19
clc;
clear;
close;
alpha=0.4;//duty cycle
R_b=7.5;//in ohms
R_a=0.1;//in ohms
I_f=1.5;//in amperes
K=1.6;//Voltage Constant (in V/A-rad/sec)
I_a=150;//in amperes
V_b=(1-alpha)*R_b*I_a;
disp(V_b,'(a) Average Voltage (in volts)=');
P_b=I_a^2*R_b*(1-alpha);
disp(P_b/1000,'(b) Power Dissipated (in kilo-watts)=');
E_g=V_b+(I_a*R_a);//in volts
N=60*E_g/(K*I_f*2*%pi);
disp(int(N),'(c) Speed (in rpm)=')