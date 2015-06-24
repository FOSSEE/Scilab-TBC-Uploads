//Caption:Find (a)KVA rating at max efficiency (b)max efficiency (c) Efficiency at full load and 0.8pf lagging (d)equivalent core resistance
//Exa:4.7
clc;
clear;
close;
S=120000;//Volt-Ampere
V_p=2400;//in volts
V_s=240;//in volts
R_1=0.75;//in ohms
R_2=0.01;//in ohms
X_1=0.8;//in ohms
X_2=0.02;//in ohms
pf=0.8;//lagging
theta=-acosd(pf);
a=V_p/V_s;//transformation ratio
I_p=S/V_p;//rated load current (in Amperes)
I_p_eta=0.7*I_p;//load current at max efficiency
KVA=I_p_eta*V_p/1000;
disp(KVA,'(a) KVA rating at max efficiency =');
P_cu_eta=I_p_eta^2*(R_1+a^2*R_2);//copper loss (in Watts)
P_m=P_cu_eta;//core loss
P_o=V_p*I_p_eta*pf;//power output at max efficiency
P_in=P_o+P_m+P_cu_eta;//power input at max efficiency
eta=P_o/P_in;
disp(eta*100,'(b) max efficiency (%)=');
P_o_FL=V_p*I_p*pf;//power output at full load
P_cu_FL=I_p^2*(R_1+a^2*R_2);//copper loss at full load
P_in_FL=P_cu_FL+P_o_FL+P_m;
Eff=P_o_FL/P_in_FL;
disp(Eff*100,'(c) Efficiency at full load (%)=');
R_c1=V_p^2/P_cu_eta;
disp(R_c1,'(d) equivalent core resistance (in ohms)=');