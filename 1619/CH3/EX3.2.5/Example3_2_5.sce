//Example 3.2.5 page 3.14

clc;
clear;
nx= 3.6;
TF= 0.68;
n= 0.3;
//Pe=Pint*TF*1/(4*nx^2);
//ne= Pe/Px*100     ..eq0
//Pe = 0.013*Pint     //Eq 1
//Pint = n*P;   //Eq 2
//substitute eq2 and eq1 in eq0
ne = 0.013*0.3*100;
printf("The external Power efficiency is  %.2f %%",ne);
// Wrongly printed in textbook. it should be P instead of Pint in last step
