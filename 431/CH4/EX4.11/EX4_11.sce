//Calculating the rotor current
//Chapter 4
//Example 4.11
//page 299
clear;
clc; 
disp("Example 4.11")
E20=100;................................//induced emf of induction motor at standstill in volts
E20p=E20/sqrt(3);........................//induced emf per phase in volts
S=0.40;................................//slip
E2=S*E20p;.................................//rotor induced emf at slip S in volts
printf("Rotor induced emf at a slip E2=%fV",E2);
R2=0.4;.................................//resistance per phase in ohms
X20=2.25;............................//standstill resistance per phase i ohms
Z2=sqrt((R2)^2+(S*X20)^2);....................//rotor impedence at slip S in ohms
printf("\nRotor impedence at a slip S, Z2=%fohms",Z2)
I=E2/Z2;
printf("\nrotor current=%fA",I)