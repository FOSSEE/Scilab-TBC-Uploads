//Caption:Find the equivalent circuit parameters of the transformer reffered to LV side and also calculate the secondary voltage
//Exa:3.10
clc;
clear;
close;
V1=300;//in volts
I_o=0.8;//in amperes
W_o=70;//in watts
pf=W_o/(V1*I_o);
I_w=I_o*pf;
I_m=I_o*sqrt(1-pf^2);
R_O=V1/I_w;
X_O=V1/I_m;
a=300/600;
V_sc=20;//in volts
I_sc=12;//in amperes
P_sc=90;//in watts
Z_O2=V_sc/I_sc;
R_O2=P_sc/I_sc^2;
X_O2=sqrt(Z_O2^2-R_O2^2);
R_O1=a^2*R_O2;
X_O1=a^2*X_O2;
I_2=6000/(600*0.8);
V2=I_2*(R_O2*pf+X_O2*sqrt(1-pf^2));
disp(R_O,'R_O (in ohms)=');
disp(X_O,'X_O Magnetising reactance (in ohms)=');
disp(R_O1,'Equivalent Resistance reffered to LV Side (in ohms)=');
disp(X_O1,'Equivalent Reactance reffered to LV Side (in ohms)');
disp(600-V2,'Secondary Terminal Voltage (in volts)=')