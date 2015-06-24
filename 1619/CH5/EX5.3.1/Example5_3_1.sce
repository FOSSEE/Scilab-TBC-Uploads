//Example 5.3.1 page 5.7

clc;
clear;

B= 15*10^-6;
L= 4;
BER= 1*10^-9;
Ls= 0.5;
Lc= 1.5;
alpha= 6;
Pm= 8;
Pt= 2*Lc +(alpha*L)+(Pm);
printf("The actual loss in fibre is %d dB",Pt);
Pmax = -10-(-50);
printf("\n\nThe maximum allowable system loss is %d dBm",Pmax);
