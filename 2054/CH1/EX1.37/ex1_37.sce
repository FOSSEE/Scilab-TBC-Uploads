//Exa:1.37
clc;
clear;
close;
P_o=45*1000;//in watts
R_a=0.2;//in ohms
V=500;//in volts
Eff=0.9;//Efficiency
I_lf=P_o/(V*Eff);//Rated Line current (in amperes)
R_sh=200;//in ohms
I_sh=V/R_sh;//Shunt feild Current (in amperes)
I_af=I_lf-I_sh;//Armature current on full load (in Amperes)
E_f=V-I_af*R_a;//emf induced (in volts)
N_f=600;//in rpm
E1=V+I_af*R_a;//in volts
N1=E1*N_f/E_f;
disp(N1,'Speed under regenerative braking(in rpm)=');
E2=I_af*(5.5+R_a)-V;//in volts
N2=E2*N_f/E_f;
disp(N2,'Speed under plugging (in rpm)=');
E3=I_af*(2.6+R_a);//in volts
N3=E3*N_f/E_f;
disp(N3,'Speed under dynamic braking(in rpm)=');