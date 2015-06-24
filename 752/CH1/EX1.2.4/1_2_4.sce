clc;
// page no 9
// prob no 1_2_4
//As given in fig. 1.2.4 L-attenuator with source resistance Rs=75 ohm and load resistance Rl=50 ohm
Rs=75; Rl=50;
//Determination of R1
R1=(Rs*(Rs-Rl))^(1/2);
disp('ohm',R1,+'The value of resistance R1 is');
//Determination of R3
R3=((Rs^2)-(R1^2))/R1;
disp('ohm',R3,+'The value of resistance R3 is');
//Determination of insertion loss
IL=(R3*(Rs+R1))/((Rs+R1+R3)*(R3+R1)-(R3)^2)
ILdB=-20*log10(IL);//convertion of power in decibels
disp('dB',ILdB,+'The value of insertion loss is');