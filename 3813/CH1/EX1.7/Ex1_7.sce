//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_7
clc;
clear;
V=250;// voltage in V
I=40;//Current in A
Ro=0.4;// Resistance in ohm
R1=2.725;// Resistance in ohm
R2=3.5;// Resistance in ohm
Eb=125;// voltage in V
Na=480;//Speed in rpm
Na1=50.24;//Speed in rad/sec
R=((1/R1)+(1/R2));
Vm=(V-(I*R1))/(R*R1);
Em=Vm-(I*Ro);
N=(Em/Eb)*Na;
disp(N,'The speed of the motor in rpm is:')
N1=(2*%pi*N)/60;
Il=(V-Vm)/R1;
Po=Em*I;
T=Po/N1;
disp(T,'The torque in Nm is:')
