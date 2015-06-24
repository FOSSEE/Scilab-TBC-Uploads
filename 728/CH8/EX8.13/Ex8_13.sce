//Caption:Calculate (i)-i/p rf voltage,(ii)-voltage gain, (iii)-efficiency 
//Exa:8.13
clc;
clear;
close;
V_o=1200;//in volts
I_o=30*10^-3;//in A
f=10*10^9;//inHz
d=0.001;//in m
l=0.04;//in m
R_sh=40*10^3;//in ohms
v_o=0.593*10^6*sqrt(V_o);
Theeta_o=2*%pi*f*l/(20.54*10^6);
X=1.84;//for maximum output power
V_max=2*X*V_o/122.347;
Theeta_g=122.347*10^-3/(4*10^-2);
Beeta_i=sin(Theeta_g/2)/(Theeta_g/2);
V_1_max=V_max/Beeta_i;
J=0.58;
Beeta_o=Beeta_i;
I_2=2*I_o*J;
V_2=Beeta_o*I_2*R_sh;
A_v=V_2/V_1_max;//in dB
eff=0.58*(V_2/V_o)*100;//in percentage
disp(V_1_max,'Input rf voltage(in volts) =');
disp(A_v,'Voltage gain (in dB) =');
disp(eff,'Maximum efficiency (in percentage) =');

//Answer in book is wrongly given as: A_v=24.33 dB