clc;
// page no 10
// prob no 1_2_5
//As given in fig. 1.2.4 L-attenuator with source resistance Rs=10 ohm and load resistance Rl=50 ohm
Rs=10; Rl=50;
//Determination of R2
R2=(Rl*(Rl-Rs))^(1/2);
disp('ohm',R2,+'The value of resistance R2 is');
//Determination of R3
R3=((Rl^2)-(R2^2))/R2;
disp('ohm',R3,+'The value of resistance R3 is');
//Determination of insertion loss
IL=(R3*(Rs+Rl))/((Rs+R3)*(R3+R2+Rl)-(R3)^2)
ILdB=-20*log10(IL);//convertion of power in decibels
disp('dB',ILdB,+'The value of insertion loss is');