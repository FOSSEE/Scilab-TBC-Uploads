//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_5a
clc;
clear;
V=250;// voltage in V
Ra=0.4;// Resistance in ohm
Na=480;//Speed in rpm
Va=125;// voltage in V
Ia=40;//Current in A
Vi=V-(Ra*Ia);
N=Na*(Vi/Va);
disp(N,'The speed of the motor in rpm is:')
N1=(2*%pi*N)/60;
T=(Vi*Ia)/N1;
disp(T,'The torque developed in Nm is:')
