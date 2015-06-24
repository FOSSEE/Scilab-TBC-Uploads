//Caption:Find the value of line voltage,line current,and output when the transformer winding is connected as (a) Star-delta (b)delta-star
//Exa:4.4
clc;
clear;
close;
a=10;//transformation ratio
V_s=3300;//in volts
I_1=10;//in amperes
V_1=V_s/sqrt(3);
V_2=V_1/a;
I_2=sqrt(3)*a*I_1;
P_o=sqrt(3)*V_2*I_2;
disp("For Star-Delta Configruation")
disp(V_2,'Line voltage (in volts)=');
disp(I_2,'Line current (in amperes)=');
disp(P_o,'Output (in watts)=');
V_2p=V_s/a;
V_2L=sqrt(3)*V_2p;
I_2L=I_1*a/sqrt(3);
P_o2=sqrt(3)*V_2*I_2;
disp("For Delta-Star Configruation")
disp(V_2L,'Line voltage (in volts)=');
disp(I_2L,'Line current (in amperes)=');
disp(P_o2,'Output (in watts)=');