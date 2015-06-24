//Caption:Find the new (a) motor speed (b) power loss in external resistance (c) efficiency
//Exa:6.5
clc;
clear;
close;
R_x=80;//external resistance
//Refer to Exa 6.4
R_sh=160;//shunt resistance
V=120;//in volts
E_a=114.4;//back emf at full load
N_m=2400;//speed of motor
P_rot=143;//rotational losses
I_fn=V/(R_x+R_sh);//new field-winding current
I_f=0.75;//field current at full load
c=sqrt(I_f/I_fn);//ratio of new flux to old flux
R_a=0.4;//armature resistance
I_a=14;//armature resistance
I_an=I_a*c;
E_an=V-(I_an*R_a);
N_mn=c*(E_an/E_a)*N_m;
disp(int(N_mn),'(a) new motor speed (in rpm)=');
P_x=(I_fn^2)*R_x;
disp(P_x,'(b) Power loss in external resistance (in Watts)=');
P_in=V*(I_fn+I_an);
P_dn=E_an*I_an;
P_o=P_dn-P_rot;
Eff=P_o/P_in;
disp(Eff*100,'(c) Efficiency (%)=');