//Example 1_34
clc;
clear;close;

//Given data: 
IL=40;//A
VC=100;//V
t_off=60*10^-6;//s
C=t_off*IL/VC;//F
disp(C,"Value of C(F)");
//L>VC^2*C/IL
L_lower=VC^2*C/IL^2;//H
Ip=VC*sqrt(C/L_lower);//A
disp("Value of L should be greater than "+string(L_lower)+" H. For this value of L, Peak capacitor current is "+string(Ip)+" A. But it should be less than maximum load current.")
//Let Ip=34.6 A
Ip=34.6;//A
L=C/(Ip/VC)^2;//H
disp(L,"Value of L(H)");
