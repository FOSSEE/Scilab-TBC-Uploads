
//To determine the speed torque curve for the series motor
//Page 381
clc;
clear;
I=[50,100,150,200,250,300]; //Field Current
Eb1=[230,360,440,500,530,580]; //Armature Volts
Ra=0.07; //Armature Winding Resistance
Rf=0.05; //Field Resistance
Rt=Rf+Ra; //Total Resistance
P=4; //Poles of the machine
N1=600; //Series Motor Speed
Vc=600; //Constant Operating Voltage

// Note that the Suffix 1 and 2 have given according the question; 1 stands for the case where the magnetisation curve has been given and 2 stands for the case where we have to find the speed torque curve

Eb2=Vc-(I.*(Rt));
N2=N1.*Eb2./Eb1; //Speed

T=9.55.*Eb2.*I./N2; //Torque

printf('The Tabulated Speeds for 600V are:\n')
disp(N2)
printf('\nAnd their corresponding torques are:\n')
disp(T)

plot(T,N2)
xlabel('Torque')
ylabel('Speed')
