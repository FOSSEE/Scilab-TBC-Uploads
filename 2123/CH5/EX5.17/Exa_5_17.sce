//Example No. 5.17
clc;
clear;
close;
format('v',7);

//Given Data : 
V=220;//V
f=50;//Hz
L=0.012;//H
Ra=0.72;//ohm
K=2;//V/rad/s
T=60;//N-m
alfa=90;//degree
Va=3*sqrt(3)*V*sqrt(2)/2/%pi*(1+cosd(alfa));//V
Ia=5;//A
disp(Ia,"Armature Current in A : ");
T1=Ia*K;//N-m
disp(T1,"Torque in N-m : ");
Eb=Va-Ia*Ra;//V
omega=Eb/K;//rad/s
N1=omega*60/2/%pi;//rpm
disp(N1,"Speed in rpm : ");
disp("");
Ia=10;//A
disp(Ia,"Armature Current in A : ");
T2=Ia*K;//N-m
disp(T2,"Torque in N-m : ");
Eb=Va-Ia*Ra;//V
omega=Eb/K;//rad/s
N2=omega*60/2/%pi;//rpm
disp(N2,"Speed in rpm : ");
Ia=20;//A
disp(Ia,"Armature Current in A : ");
T3=Ia*K;//N-m
disp(T3,"Torque in N-m : ");
Eb=Va-Ia*Ra;//V
omega=Eb/K;//rad/s
N3=omega*60/2/%pi;//rpm
disp(N3,"Speed in rpm : ");
Ia=30;//A
disp(Ia,"Armature Current in A : ");
T4=Ia*K;//N-m
disp(T4,"Torque in N-m : ");
Eb=Va-Ia*Ra;//V
omega=Eb/K;//rad/s
N4=omega*60/2/%pi;//rpm
disp(N4,"Speed in rpm : ");
plot([T1 T2 T3 T4],[N1 N2 N3 N4]);
title('Speed Torque Characteristics');
xlabel('Torque(N-m)');
ylabel('speed(RPM)');
