//Caption:Calculate the percentage resistance and reactance drops and the percentage of full load at which max efficiency will occur
//Exa:3.27
clc;
clear;
close;
KVA=20;
V1=1100;//in volts
V2=220;//in volts
a=V1/V2;
P_i=175;//in watts
R1=0.25;//in ohms
R2=0.012;//in ohms
X1=1.1;//in ohms
X2=0.055;//in ohms
R_O2=R2+R1/a^2;
X_O2=X2+X1/a^2;
I2=KVA*1000/V2;
V_r=I2*R_O2*100/V2;
disp(V_r,'Percentage Resistance drop (in %)=');
V_re=I2*X_O2*100/V2;
disp(V_re,'Percentage Reactance drop (in %)=');
P_cu=I2^2*R_O2;
x=sqrt(P_i/P_cu);
disp(x*100,'Max Efficiency will occur at');
disp('percent of full load');