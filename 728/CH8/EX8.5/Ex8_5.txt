//Caption:Calculate (i)-i/p microwave voltage,(ii)-voltage gain, (iii)-efficiency of amplifier,(iv)-beam loading conductance
//Exa:8.5
clc;
clear;
close;
V_o=1200;//in volts
I_o=28*10^-3;//in A
f=8*10^9;//inHz
d=0.001;//in m
l=0.04;//in m
R_sh=40*10^3;//in ohms
V_p_max=1200*3.68*0.593*10^6*sqrt(V_o)/(2*%pi*f*l);
Theeta_g=(2*%pi*f)*d/(0.593*10^6*sqrt(V_o));//transit angle (in rad)
beeta=sin(Theeta_g/2)/(Theeta_g/2);
V_i_max=V_p_max/beeta;
Beeta_o=0.768;
J=0.582;//J(X)
A_v=(Beeta_o)^2*97.88*J*R_sh/(1200/(28*10^-3*1.841));//calculating voltage gain
eff=[0.58*[2*28*10^-3*J*Beeta_o*R_sh]/V_o]*100;//calculating efficiency
G_o=23.3*10^-6;
G_b=(G_o/2)*{Beeta_o^2-Beeta_o*cos(Theeta_g)};//beam loading conductance
R_b=1/(G_b*1000);//beam loading resistance(in kilo ohms)
disp(V_i_max,'Input microwave voltage(in volts) =');
disp(A_v,'Voltage gain =');
disp(eff,'Effeciency of amplifier (in percentage) =');
disp(R_b,'Beam loading resistance(in kilo ohms) =');

//Answer in book is wrongly given as: Voltage gain =17.034