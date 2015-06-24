//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 332
clear;
clc;

//Given

A2=200;//second stage open loop gain
B=0.1;//feedback gain beta
D2=0.02;//second harmonic distortion

//Solution

disp("(a)");
A2_dash=A2/(1+B*A2);//second stage closed loop gain
A1=A2/A2_dash;//gain of the first stage
printf("The gain of the first stage A1 = %d",A1);

disp("(b)");
D2_dash=D2/(1+B*A2);//total second harmonic distortion
printf("The second harmonic distortion D2''= %.1f %%",D2_dash*100);

//calculation error in textbook as A*B=20 and not 2
