//Exa 5.5
clc;
clear;
close;
//Given data :
VRL=30000;//Volts
VSL=33000;//Volts
f=50;//Hz
P=10*10^6;//W
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VR=VRL/sqrt(3);//V
I=P/sqrt(3)/VRL/pf;//A
Eta_T=0.96;//Efficiency
LineLoss=P*(1/Eta_T-1);//W
R=LineLoss/3/I^2;//ohm/phase
disp(R,"Resistance per phase(ohm/phase)");
VS=VSL/sqrt(3);//V
X=(VS-VR-I*R*cos_fi_r)/I/sin_fi_r;//V
L=X/2/%pi/f;//H/phase
disp(L*1000,"Inductance per phase(mH/phase)");
