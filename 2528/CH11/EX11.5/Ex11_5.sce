// Chapter 11
// Band pass Filter
// Page.No-418
// Example11_5
// Given
clear;clc;
f2=1200;                //in Hz
f1=800;                 //in Hz
BW=f2-f1;
printf("\n The Bandwidth is %.3f Hz\n",BW); // Result
fo=(f1*f2)^0.5;
printf("\n  fo is %.0f Hz\n",fo); // Result
Q=fo/BW;
printf("\n  Q is %.2f \n",Q); // Result
Av=-2*Q*Q;
printf("\n Av is %.0f \n",Av); // Result
fut=10*Av*fo;
printf("\n funity is %.0f Hz\n",fut); // Result
R2=2*Q;
printf("\n R2 is %.1f Ohm\n",R2); // Result
R1b=Q/(2*Q*Q-1);
printf("\n R1b is %.4f Ohm\n",R1b); // Result
W=2*%pi*fo;
printf("\n The  frequency is = %.0f radians per seconds\n",W); // Result
C=1/W;
printf("\n C is %.7f F\n",C); // Result
//practical component value
printf("\n R and C are %.0f Ohm and %.8f F\n",R2*10,C/10); // Result
