//Caption:Find (a)per unit power (b)critical fault clearing time
//Exa:11.8
clc;
clear;
close;
f=60;//in Hertzs
P=4;//no. of poles
P_m=0.9;
H=10;//in Joule/Volt-Amperee
N_s=f*120/P;//synchronous speed in (rpm)
w_s=2*%pi*N_s/f;//(in rad/sec)
P_dm=P_m/sind(18);
t_c=P/f;//fault clearing time (in sec)
delta_o=18*2*%pi/360;//in rad
delta_m=delta_o+((w_s/(P*H))*P_m*t_c^2);
P_d=P_dm*sin(delta_m);
disp(P_d,'(a) power generated (in per unit)=');
delta_2=%pi-delta_o;
delta_c=acos(((P_m/P_dm)*(delta_2-delta_o))+cos(delta_2));
t_cn=sqrt((delta_c-delta_o)*4*H/(w_s*P_m));
disp(t_cn,'(b) critical fault clearing time (in sec)=');