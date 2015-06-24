//Caption:Find synchronous reactance per phase and voltage regulation
//Exa:7.8
clc;
clear;
close;
V_r=2300;//rated voltage (in Volts)
P_r=500*10^3;//rated power (in Volt-Amperes)
pf=0.8;//lagging
theta=-1*(acosd(0.8));
I_sc=150;//short circuit current (in Amperes)
V_anL=V_r/sqrt(3);//open-circuit phase voltage
Z_sc=V_anL/I_sc;//(in ohms)
X_s=sqrt((Z_sc^2)-0.5^2);
disp(X_s,'synchronous reactance per phase (in ohms)=');
I_ao=P_r/(3*V_anL);//full load current (magnitude)
I_a=I_ao*(cosd(theta)+(%i*sind(theta)));
V_b=V_anL;//base value of voltage
I_b=I_ao;//base value of current
Z_b=V_b/I_b;//base value of impedance
I_apu=I_a/I_b;//per unit armature current
V_pu=V_anL/V_b;//per unit voltage
Z_spu=(0.5+(%i*X_s))/Z_b;//per unit impedance
E_apu=V_pu+(I_apu*Z_spu);
VR=(abs(E_apu)-1)*100;
disp(VR,'voltage regulation (%)=');