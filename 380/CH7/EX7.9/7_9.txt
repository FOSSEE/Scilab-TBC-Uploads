//Caption:Find the voltage regulation and power developed by the generator
//Exa:7.9
clc;
close;
clear;
V_r=13.8*10^3;//in volts
R_a=0;
X_d=1.83;//in ohms
X_q=1.21;//in ohms
P_r=70*10^6;//in Volt-Ampere
pf=0.8;//lagging
theta=(-1)*acosd(pf);
V_a=V_r/(sqrt(3));//rms value of per phase voltage
I_ao=P_r/(3*V_a);
tan_delta=((I_ao*X_q*cosd(theta))-(I_ao*R_a*sind(theta)))/(V_a+(I_ao*((R_a*cosd(theta))-(X_q*sind(theta)))));
delta=atand(tan_delta);
alpha=delta+acosd(pf);
I_d=I_ao*sind(alpha)*((cosd(delta-90))+(%i*(sind(delta-90))));
I_q=I_ao*cosd(alpha)*((cosd(delta))+(%i*(sind(delta))));
E_a=abs(V_a+(I_q*(%i)*X_q)+(I_d*(%i)*X_d));
VR=((E_a-V_a)/V_a)*100;
disp(VR,'voltage regulation (%)=');
P_d=3*V_a*I_ao*pf;
disp(P_d/(10^6),'Power developed (in Mega-Watts)=')