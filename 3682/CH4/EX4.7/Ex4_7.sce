// Exa 4.7

clc;
clear;

// Given data

// Referring Circuit in Fig. 4.27

// Solution

printf(' The transfer gain of the cirucuit is - \n');
printf(' Vo(s) = -Zf =  (R2+R3)+s*C*R2*R3 \n');
printf(' ----    ----   -----------------\n');
printf(' Vi(s) =   R1 =    R1*(1+s*C*R3)\n');

printf('\n i.e R1(1+s*C*R3)*Vo(s)+[(R2+R3)+s*C*R2*R3]*Vi(s) = 0.\n');
printf('\n\n Writing above equation  in time domain (s→d/dt), we get,\n');
printf('\n R1 + C*R3*R1(d/dt Vo(t))+ [(R2+R3)+c*R2*R3]*(d/dt Vi(t)) = 0  ...eq(1)\n\n');

printf(' Since, vi(t) = V, \n Therefore, d/dt Vi(t) = 0.\n\n');
printf(' Therefore eq(1) becomes-  \n C*(d/dt vo) + vo/R3 + V/R1 + (R2/R1*R3)*V = 0.\n');
printf(' \n Thus, output vo(t) is given by a differential equation as shown above. \n');
