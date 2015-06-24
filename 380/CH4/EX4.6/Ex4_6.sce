//Caption:Find efficiency and voltage regulation of transformer
//Exa:4.6
clc;
clear;
close;
S=2200;//Volt-Ampere
V_s=220;//secondary side voltage (in Volts)
V_2=V_s;
V_p=440;//primary side voltage (in Volts)
R_e1=3;//in ohms
X_e1=4;//in ohms
R_c1=2.5*1000;//in ohms
X_m1=2000;//in ohms
a=V_p/V_2;//transformation ratio
pf=0.707;//lagging power factor
theta=-acosd(pf);
I_2=(S/V_2)*(cosd(theta)+%i*sind(theta));//(in Amperes)
//Refer to equivalent circuit (fig:4.16)
I_p=I_2/a;//in Amperes
V_2p=a*V_2;
V_1=V_2p+I_p*(R_e1+%i*X_e1);
I_c=V_1/R_c1;//core loss current (in Amperes)
I_m=V_1/(%i*X_m1);
I_1=I_p+I_c+I_m;//current supplied by source (in Amperes)
P_o=real(V_p*conj(I_p));//output power (in Watts)
P_in=real(V_1*conj(I_1));//input power (in Watts)
Eff=P_o/P_in;//Efficiency
disp(Eff*100,'Efficiency (%)=');
VR=(abs(V_1)-abs(V_p))/V_p;
disp(VR*100,'voltage regulation (%)=')