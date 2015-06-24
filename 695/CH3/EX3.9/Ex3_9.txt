//Caption:Find the readings of transformers when it is connected for (a)OC test (b)SC test
//Exa:3.9
clc;
clear;
close;
V1=460;//in volts
V2=230;//in volts
a=V1/V2;
R1=0.4;//in ohms
R2=0.1;//in ohms
X1=0.5;//in ohms
X2=0.12;//in ohms
R_o=650;//in ohms
X_o=250;//in ohms
I_w=V1/R_o;
I_m=V1/X_o;
P_occ=V1*I_w;
disp('Readings of transformer for OC test');
disp(V1,'Voltage Reading (in volts)=');
disp(sqrt(I_w^2+I_m^2),'Current Reading (in Amperes)=');
disp(P_occ,'Power output reading (in watts)=');
R_O1=R1+a^2*R2;
X_O1=X1+a^2*X2;
Z=sqrt(R_O1^2+X_O1^2);
I=4000/V1;
V_sc=I*Z;
P_sc=I^2*R_O1;
disp('Readings of transformer for SC test');
disp(V_sc,'Voltage Reading (in volts)=');
disp(I,'Current Reading (in Amperes)=');
disp(P_sc,'Power output reading (in watts)=');