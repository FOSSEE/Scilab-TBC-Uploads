//Caption:Calculate (i)-value of repeller voltage V_r ,(ii)-beam current necessary to give gap voltage of 200V, (iii)-electronic efficiency 
//Exa:8.6
clc;
clear;
close;
e_m_ratio=1.759*10^11;//(e/m)
V_o=500;//in volts
R_sh=20*10^3;//in ohms
f=8*10^9;//inHz
w=2*%pi*f;
n=2;//mode
L=0.001;//spacing between repeller & cavity (in m)
x=0.023;
volt_diff=sqrt(V_o*(x));
V_r=volt_diff+V_o;//repeller volatge
Beeta_o=1;//Assuming
J=0.582;
V_1=200;//given (in volts)
I_o=V_1/(R_sh*2*J);
Theeta_o=2*%pi*f*J*10^6*2*10^-3*sqrt(V_o)/(1.579*10^11*(V_r+V_o));
X=V_1*Theeta_o/(2*V_o);//X'
j=0.84;//J(X')
eff=[2*j/(2*%pi*2-%pi/2)]*100;
disp(V_r,'Repeller voltage(in volts) =');
disp(I_o,'Necessary beam current (in Amp.s) =');
disp(eff,'Effeciency  (in percentage) =');