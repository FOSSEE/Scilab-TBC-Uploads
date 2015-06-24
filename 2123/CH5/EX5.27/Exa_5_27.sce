//Example No. 5.27
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=230;//V
P=15;//hp
N=1500;//rpm
V2=220;//V
Ke=0.03;//V/A-s
Kt=0.03;//N-m/A^2
alfa=45;//degree
Vm=V1*sqrt(2);//V
omega=N*2*%pi/60;//rad/s
T=4*Kt*Vm^2*cosd(alfa)^2/(%pi^2*(Ke*omega)^2);//N-m
Ia=sqrt(T/Kt);//A
disp("part (a) : ");
disp(T,"Torque in N-m : ");
disp(Ia,"Armature current in A : ");
disp("part (b) : ");
Ia=Vm*(1+cosd(alfa))/(%pi*(Ke*omega));//A
T=Kt*Ia^2;//N-m
disp(Ia,"Armature current in A : ");
disp(T,"Torque in N-m : ");
