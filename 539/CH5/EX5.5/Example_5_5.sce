//Diffusion Coefficient Activation Energy and Preexponential Calculations

clear;
clc;

printf("\tExample 5.5\n");

//From graph log D ad 1/T are deducted
inv_T1=0.8*10^-3;          //Reciprocal of temp.  in K^-1
inv_T2=1.1*10^-3;          //Reciprocal of temp.  in K^-1
logD1=-12.4;
logD2=-15.45;

R=8.31;                   //Gas law Constant in J/mol-K

Qd=-2.3*R*(logD1-logD2)/(inv_T1-inv_T2);
printf("\nActivation energy is %d kJ/mol",Qd/1000);

//For calculating Peexponential factor
D0=10^(logD2+(Qd*inv_T2/(2.3*R)));
printf("\nPreexponential factor D0 is %.1f * 10^-5 m^2/s\n",D0/10^-5);

//End