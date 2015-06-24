////Exa 11.10
clc;
clear;
close;
//Given data :
r=1;//cm
R=2.5;//cm
d=2*r;//cm
D=2*R;//cm
epsilon_r1=5;//relative permitivity
epsilon_r2=4;//relative permitivity
epsilon_r3=3;//relative permitivity
gmax=40;//KV/cm
//epsilon_r1*d=epsilon_r2*d1=epsilon_r3*d2
d1=(epsilon_r1/epsilon_r2)*d;//cm
d2=(epsilon_r1/epsilon_r3)*d;//cm
Vpeak=gmax/2*(d*log(d1/d)+d1*log(d2/d1)+d2*log(D/d2));//kV
Vrms=Vpeak/sqrt(2);//kV
disp(Vrms,"Working voltage(rms) for the cable (kV)");
