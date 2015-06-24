//to find the ratio of currents and torques at the starting,V2/V1

clc;
f1=50;
f2=60;
f=f2/f1;
V=1;    //V=V2/V1
s_max_T=0.2;
//Is=I_s2/I_s1
Is=V*sqrt((s_max_T^2+1)/(s_max_T^2+f^2));
disp(Is,'ratio of currents at starting');
//Ts=T_s2/T_s1
Ts=V^2*((s_max_T^2+1)/(s_max_T^2+f^2));
disp(Ts,'ratio of torques at starting');
//Tmax=Tmax2/Tmax1
Tmax=V^2/f^2;
disp(Tmax,'ratio of max torques');
Vr=sqrt(1/sqrt((s_max_T^2+1)/(s_max_T^2+f^2)));
disp(Vr,'V2/V1');