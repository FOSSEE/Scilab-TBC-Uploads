//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 330
clear;
clc;

//Given

Vi=25D-3;//input voltage in volts
A=300;//open loop gain
B=0.01;//feedback factor beta

//Solution

disp("(i)");
Afb=A/(1+A*B);//closed loop gain
printf("Afb = %d\n ",Afb);

disp("(ii)");
Vo_dash=Afb*Vi;//output voltage with feedback in volts
printf("Vo'' = %.3f Volts\n ",Vo_dash);

disp("(iii)");
AB=A*B;//feedback factor Aβ
printf("Feedback factor Aβ = %d\n ",AB);

disp("(iv)");
BVo_dash=B*Vo_dash;//feedback voltage in volts
printf("Feedback voltage βVo'' = %.4f Volts",BVo_dash);
