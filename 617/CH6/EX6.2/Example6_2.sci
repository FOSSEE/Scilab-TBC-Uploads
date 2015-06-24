clc();
clear;

// To calculate the reynolds number

u=2.08/32.16;                             // viscosity of water at 80 degF in slug/ft-hr
m=965000/32.16;                           // mass velocity of water in slug/hr-ft
d=1/12;                                   // inner diameter of tube in ft
Nre=m*d/u;                                // reynolds number

// 3600 is multiplies to convert sec into hrs
printf("Reynolds Number is %d",Nre);