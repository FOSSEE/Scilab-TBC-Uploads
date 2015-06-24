//Exa:1.32
clc;
clear;
close;
f=50;//in hertz
V=440;//in volts
P_o=110*1000;//in watts
P=24;//No.Of Poles
N_s=120*f/P;//Synchronous Speed (in rpm)
N=245;//in rpm
s_f=(N_s-N)/N_s;//Full load Speed
T_f=P_o/(2*%pi*N/60);//Full load Torque (in N-m)
R=0.04;//in ohms
R2=R/2;//Rotor resistance per phase (in ohms)
K=1.25;// ratio of stator turns to rotor turns
R_2=R2*K^2;//Rotor resistance reffered to stator (in ohms)
X_2=sqrt(((V^2*R_2*1.2/(T_f*500*%pi))-R_2^2)*(1/R2)^2);//in ohms
s=(N_s-175)/N_s;//slip at 175 rpm
T=T_f*175^2/N^2;//Torque at 175 rpm (in N-m)
b=-(V^2*s*60/(T*2*%pi*N_s));
a=1;
c=(s*X_2)^2;
R_n=(-b+sqrt(b^2-4*a*c))/(2*a)
R_ext=(R_n-R_2)/K^2;
disp(R_ext,'Resistance to be added to each slip ring (in ohms)=')