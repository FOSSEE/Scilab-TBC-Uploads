//Caption:Find the voltage regulation when power factor of load is (a)80% lagging (b) unity (c) 80%leading
//Exa:7.6
clc;
clear;
close;
V=208;//in volts
P_o=9000;
R=0.1+(%i*5.6);
V_a=int(V/sqrt(3));//rms value of per phase voltage
I_a=P_o/(3*V_a);//rms value of per phase current
disp("(a)  For 80% lagging power factor of load");
theta=(-1)*acosd(0.8);
I_a_L=(I_a)*(cosd(theta)+((%i)*sind(theta)));
E_a=V_a+I_a_L*R;//in volts
VR=((abs(E_a)-V_a)/V_a)*100;
disp(VR,'voltage regulation (%)=');
disp("(b)  For Unity power factor of load");
theta=acosd(1);
I_a_L=(I_a)*(cosd(theta)+((%i)*sind(theta)));
E_a=V_a+I_a_L*R;//in volts
VR=((abs(E_a)-V_a)/V_a)*100;
disp(VR,'voltage regulation (%)=');
disp("(c)  For 80% leading power factor of load");
theta=acosd(0.8);
I_a_L=(I_a)*(cosd(theta)+((%i)*sind(theta)));
E_a=V_a+I_a_L*R;//in volts
VR=((abs(E_a)-V_a)/V_a)*100;
disp(VR,'voltage regulation (%)=');