//Exa:1.6
clc;
clear;
close;
V=230;//in volts
R_sh=230;//in ohms
R_a=0.5;//in ohms
I_sh=V/R_sh;//in amperes
I_lo=3;//in amperes
I_ao=I_lo-I_sh;//in amperes
E_bo=V-I_ao*R_a;//in volts
N_o=1000;//in rpm
I_lf=23;//in amperes
I_af=I_lf-I_sh;//in amperes
E_bf=V-I_af*R_a;//in volts
Phy_ratio=0.98;
N_f=N_o*(E_bf/E_bo)/Phy_ratio;
disp(ceil(N_f),'Full Load Speed (in rpm)=');
T_f=9.55*E_bf*I_af/N_f;
disp(T_f,'Full load Torque (in Newton-meter)=');