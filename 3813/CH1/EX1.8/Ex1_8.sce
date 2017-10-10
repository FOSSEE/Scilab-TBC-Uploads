//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_8
clc;
clear;
V=250;// voltage in V
I=40;//Current in A
R1=0.91;// Resistance in ohm
Rs=0.95;// Resistance in ohm
Eb=125;// voltage in V
N1=480;//Speed in rpm
Vm=Rs*I;
Ia=I-((V-Vm)/2);
Em=-Vm-(Ia*R1);
N=-(Em/Eb)*N1;
disp(N,'The speed in rpm is:')
N2=-(2*%pi*N)/60;
T=(Em*Ia)/N2;
disp(T,'The torque in Nm is:')
