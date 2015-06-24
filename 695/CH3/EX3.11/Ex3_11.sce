//Caption:Find the equivalent circuit parameters of the transformer reffered to LV side and also calculate the efficiency
//Exa:3.11
clc;
clear;
close;
V1=200;//in volts
I_o=0.8;//in amperes
W_o=80;//in watts
pf=W_o/(V1*I_o);
I_w=I_o*pf;
I_m=I_o*sqrt(1-pf^2);
R_O=V1/I_w;
X_O=V1/I_m;
a=200/400;
V_sc=25;//in volts
I_sc=10;//in amperes
P_sc=90;//in watts
Z_O2=V_sc/I_sc;
R_O2=P_sc/I_sc^2;
X_O2=sqrt(Z_O2^2-R_O2^2);
R_O1=a^2*R_O2;
X_O1=a^2*X_O2;
I_2=12;
I_1=I_2/a;
V2=sqrt((V1*pf+I_1*R_O1)^2+(V1*sqrt(1-pf^2)+I_1*X_O1)^2);
P_iron=80;//in watts
P_cu=(12/10)^2*90;
P_total=P_cu+P_iron;
Eff=6000*0.8/(6000*0.8+P_total);
disp(R_O,'R_O (in ohms)=');
disp(X_O,'X_O Magnetising reactance (in ohms)=');
disp(R_O1,'Equivalent Resistance reffered to LV Side (in ohms)=');
disp(X_O1,'Equivalent Reactance reffered to LV Side (in ohms)');
disp(Eff*100,'Efficiency (in %)=')