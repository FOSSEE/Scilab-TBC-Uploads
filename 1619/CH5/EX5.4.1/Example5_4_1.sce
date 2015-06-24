//Example 5.4.1 page 5.13

clc;
clear;

Ttx= 15;
Tmat=21;
Tmod= 3.9;
BW= 25;
Trx= 350/BW;

Tsys = sqrt(Ttx^2+Tmat^2+Tmod^2+Trx^2);
printf("The system rise time is %.2f ns.",Tsys);
