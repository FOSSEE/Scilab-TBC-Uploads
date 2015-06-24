//Part B Chapter 4 Example 3
clc;
clear;
close;
n=12;//bolts
PCD=300;//mm
D=50;//mm
Ddash=90;//mm
tau_s=60;//MN/m^2
T=tau_s*10^6*%pi*(D/1000)^4/(D/2*10^-3*32);//Nm
R=Ddash/2;//mm
d=(Ddash^4-T*1000*R*32/60/%pi)^(1/4);//mm
disp("Internal diameter of hollow shaft is "+string(d)+" mm");
Tb=T/n;//Nm per bolt
PCrad=150;///mm
Fb=Tb/(PCrad/1000);//N(Force on bolt)
tau_sb=20;//MN/m^2
Ab=Fb/tau_sb/10^6;//m^2(Area of bolt)
db=sqrt(Ab/(%pi/4));//m
disp("Bolt diameter is "+string(db*1000)+" mm");
