clear;
clc;
V_s=230;//V;
t_rr=40*10^-6;//s reverde recovery time
V_o=2*sqrt(2)*V_s/%pi;
V_m=sqrt(2)*V_s;
disp("when f=50Hz");
f=50;
V_r=(V_m/%pi)*(1-cosd(2*%pi*f*t_rr*180/%pi));
v_avg=V_r*100/V_o*10^3;    printf("percentage reduction in avg o/p voltage=%.3fx10^-3",v_avg);

disp("when f=2500Hz");
f=2500;
V_r=(V_m/%pi)*(1-cosd(2*%pi*f*t_rr*180/%pi));
v_avg=V_r*100/V_o;    printf("percentage reduction in avg o/p voltage=%.3f",v_avg);
