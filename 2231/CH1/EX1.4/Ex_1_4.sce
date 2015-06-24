//Example 1_4
clc;
clear;close;

//Given data
IG=poly(0,'IG');//A
VG=1+9*IG;//V
Vgate=25;//V
t=%pi;//radian(duration)
Pavg=0.6;//W

//Solution :
Ploss=Pavg*2*%pi/t;//W
//Ploss=VG*IG
X=VG*IG-Ploss;
IG=roots(X);//A
IG=IG(2);//A(taking +ve value only)
VG=1+9*IG;//V
//Vgate=RG*IG+VG
RG=(Vgate-VG)/IG;//ohm
disp(VG,"VG in V");
disp(IG,"IG in A");
disp(RG,"RG in ohm");
