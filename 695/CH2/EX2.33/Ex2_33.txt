//Caption:Determine the output and efficiency when input current is (a)20A (b)100A
//Exa:2.33
clc;
clear;
close;
V=500;//in volts
R_a=0.2;//in ohms
I_o=4;//in amperes
I_f=1;//in amperes
P_c=V*I_o-(((I_o-I_f)^2)*R_a);//in watts
I_1=20;///in amperes
P_i1=V*I_1;//in watts
P_a1=((I_1-I_f)^2)*R_a;//in watts
P_L1=P_c+P_a1;//in watts
P_o1=P_i1-P_L1;//in watts
disp(P_o1,'(a) Output (in watts)=');
disp(P_o1/P_i1*100,'  Efficiency (in %)=');
I_2=100;///in amperes
P_i2=V*I_2;//in watts
P_a2=((I_2-I_f)^2)*R_a;//in watts
P_L2=P_c+P_a2;//in watts
P_o2=P_i2-P_L2;//in watts
disp(P_o2,'(b) Output (in watts)=');
disp(P_o2/P_i2*100,'  Efficiency (in %)=');