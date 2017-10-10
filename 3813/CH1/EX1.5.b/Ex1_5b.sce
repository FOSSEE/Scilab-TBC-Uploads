//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_5b
clc;
clear;
V=250;// voltage in V
I=40;//Current in A
Ra=0.4;//Resistance in ohm
Eb=125;// voltage in V
Na=50.24;//Speed in rpm
Re=(V-Eb-(I*Ra))/I;
disp(Re,'The value of resistance in ohm:')
T=(Eb*I)/Na;
disp(T,'The torque developed in Nm is:')
//Result vary due to error in calculation of torque in the textbook
