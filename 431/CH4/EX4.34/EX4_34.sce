//Calculating the rotor current at slip 3 precent and when the rotor develops maximum torque
//Chapter 4
//Example 4.34
//page 352
clear;
clc; 
disp("Example 4.34")
E20=120;......................//induced emf of motor at standstill in volts
E20p=120/sqrt(3);.....................//induced emf per phase
f=50;...............................//frequency of the motor in hertz
R2=0.2;.................................//Rotor Resistance  per phase
X20=1;.....................................//Standstill resistance in ohms
P=4;................................//pole
I=16;........................//
S=(I*R2)/sqrt((E20)^2-(I*X20)^2);
Ns=(120*f)/P;
printf("Synchronous speed=%frpm",Ns)
Nr=Ns-(Ns*S)
Sm=R2/X20;
Nr=Ns-(Ns*Sm)
I2=(Sm*E20p)/sqrt((R2)^2+(Sm*X20)^2)
printf("\nrotor current at maximum torque=%fAper Phase",I2)
Pi=(3*((I2)^2)*R2)/Sm;
printf("\nRotor input for the three phase=%fW",Pi)