//Calculate rotor current and phase difference
//Chapter 4
//Example 4.7
//page 297
clear;
clc; 
disp("Example 4.7")
E20=100;            //induced emf in volts
R2=0.05;            //rotor resistance in ohms
X20=0.1;            //rotor reactance in ohms
E20p=E20/sqrt(3);
disp("When S=0.04")
S=0.04;
I2=(S*E20p)/sqrt(R2^2+(S*X20)^2)
printf("I2=%dA",I2);
phi2=acosd(R2/(sqrt(R2^2+(S*X20)^2)));
printf("\nPhase angle between rotor voltage and rotor current=%f degrees",phi2);
disp("When S=1")
S=1;
I2=(S*E20p)/sqrt(R2^2+(S*X20)^2)
printf("I2=%dA",I2);
phi2=acosd(R2/(sqrt(R2^2+(S*X20)^2)));
printf("\nPhase angle between rotor voltage and rotor current=%f degrees",phi2);



