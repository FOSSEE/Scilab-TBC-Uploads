//Electric Drives:concepts and application by V.Subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_2
clc;
clear;
V1=400;//supply voltage is V
I1=70;//Current in A
N1=78.5;//speed in rad/sec
R1=0.3;//resistance in ohm
I2=90;//current in A
N2=31.4;//Speed in rpm
Eb1=V1-(I1*R1);
T1=(Eb1*I1)/N1;
V2=V1+Eb1;
R2=(V2/I2)-R1;
T2=(Eb1*I2)/N1;
Eb2=(Eb1*N2)/N1;
I=(V1+Eb2)/R2;
T=(Eb2+I)/N2;
disp(T,'The initial breaking torque in Nm is:')
//Calculation error in the textbook
