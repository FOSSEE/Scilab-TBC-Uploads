//Caption:Find power developed and speed for (a)cumulative compound motor (b)differential compound motor 
//Exa:6.3
clc;
clear;
close;
disp("(a) For Cumulative compound motor");
V=240;//in volts(Refer to exa:6.2)
R_a=0.4;//armature resistance (Refer to exa:6.2)
T=20.68;//torque (Refer to exa:6.2)
R_x=0.1;//in ohms
I_a=22.5;//armature current of shunt motor (Refer to exa:6.2)
I_ac=I_a/(1+0.125);//armature current of cummulative compound motor
E_ac=V-(I_ac*(R_a+R_x));
P_dc=E_ac*I_ac;
disp(P_dc,'Power developed (in Watts)=');
N_mc=(P_dc*60)/(T*2*%pi);
disp(int(N_mc),'speed (in rpm)=');
disp("(b) For differential compound motor");
I_ad=I_a/(1-0.125);//armature current of cummulative compound motor
E_ad=V-(I_ad*(R_a+R_x));
P_dd=E_ad*I_ad;
disp(P_dd,'Power developed (in Watts)=');
N_md=(P_dd*60)/(T*2*%pi);
disp(int(N_md),'speed (in rpm)=');