//Caption:Find the efficiency of transformer
//Exa:4.3
clc;
clear;
close;
R_1=4;//in ohms
R_2=0.04;//in ohms
X_1=12;//in ohms
X_2=0.12;//in ohms
pf=0.866;//power factor
V_p=2300;//primary voltage in volts
V_s=230;//Secondary voltage in volts
S=23000;//VA 
theta=acosd(pf);
I_2=(S*0.75/V_s)*(cosd(theta)+%i*sind(theta));//secondary current (in Amperes)
Z_2=R_2+%i*X_2;//secondary winding impedance (in ohms)
E_2=V_s+I_2*Z_2;//induced emf in secondary winding (in Volts)
a=V_p/V_s;//transformation ratio
E_1=a*E_2;//induced emf in primary winding (in Volts)
I_1=I_2/a;//current in primary winding
Z_1=R_1+%i*X_1;//primary winding impedance (in ohms)
V_1=E_1+I_1*Z_1;//source voltage
P_o=real(V_s*conj(I_2));//output power(in Watts)
P_in=real(V_1*conj(I_1));//input power
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=');