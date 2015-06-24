//Caption:Find the speed
//Exa:2.14
clc;
clear;
close;
V_t=400;//in volts
V_b=2;//total brush drop in volts
R_a=0.12;//armature winding resistance in ohms
N1=1000;//speed in rpm
I_a1=150;//in amperes
I_a2=100;//in amperes
R_L=V_t/I_a1;//load resistance in ohms
E_g1=V_t+I_a1*R_a+V_b;//in volts
V_to=R_L*I_a2;//in volts
E_g2=ceil (V_to+I_a2*R_a+V_b);//in volts
//Since E_g is directly proportional to N
//therefore,E_g1/E_g2=N1/N2
N2= N1*E_g2/E_g1;//in rpm
disp(ceil(N2),'Speed (in rpm)=')