//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_6
clc;
clear;
V=250;// voltage in V
I=40;//Current in A
R1=2.725;// Resistance in ohm
R2=3.5;// Resistance in ohm
Rf=0.15;// Resistance in ohm
N=480;//Speed in rpm
V1=V-I*(R1+Rf);
Ir=(V1/R2);
Ia=I-Ir;
Eb=V1-(Ia*Rf);
Nm=N*(V1/Eb);
disp(Nm,'The speed of motor in rpm is:')
//Result vary due to 125V is used instead of 135V in the textbook
T=(Eb*Ia)/(2*%pi*Nm/60);
disp(T,'The torque in Nm is:')
