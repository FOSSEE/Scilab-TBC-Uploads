//Caption:Find the equivalent rotor impedance as reffered to stator
//Exa:9.10
clc;
clear;
close;
R=20*10^-6;//in ohms
X=2*10^-3;//in ohms
P=4;//no. of poles
Q=48;//no. of bars
S=36;//no. of slots
//For Stator:
m_1=3;//no. of phases
n=3*(S/(P*3));//coils per pole per phase 
S_p=S/P;//pole span
S_s=180/S_p;//slot span (in electrical degree)
k_p1=sind(140/2);//pitch factor
k_d1=sind(3*S_s/2)/(3*sind(S_s/2));//distribution factor
k_w1=k_p1*k_d1;//winding factor
N_1=10*S/3;//turns per phase
//For Rotor:
k_w2=1;
m_2=Q/P;//no. of phases
N_2=P/2;//turns per phase
a=int((k_w1*N_1/(k_w2*N_2))*sqrt(m_1/m_2));
R_2=a^2*R;
disp("Rotor Parameters as reffered to stator:");
disp(R_2*1000,'R_2 (in mili ohms)=');
X_2=a^2*X;
disp(X_2,'X_2 (in ohms)=');