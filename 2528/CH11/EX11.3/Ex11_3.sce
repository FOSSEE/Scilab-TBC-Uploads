// Chapter 11
// Design a filter to remove subsonic tones
// Page.No-406
// Example11_2
//Figure 11.29
// Given
clear;clc;
f3db=20;            //In Hz
W3db=2*%pi*f3db;
printf("\n The desired break frequency, W3db is = %.1f radians per second\n",W3db); // Result
disp("Stage 1");
kf=1.557;
Wc=W3db/kf;
printf("\n The Wc is = %.1f radians per second\n",Wc); // Result
Rscaled=1/80.7;  //Rscaled value 
R=1000*Rscaled;     //Practical Value
printf("\n The scaled Resistor required is  = %.3f Ohm\n",R); // Result
C=1*10^-6;          //Assumed Value
printf("\n The assumed capacitor  is  = %.6f Farad\n",C); // Result
disp("Stage 2");
Alpha=1.775;
R1=Alpha/2;
printf("\n The Resistor R1 required is  = %.4f Ohm\n",R1); // Result
R2=2/Alpha;
printf("\n The Resistor R2 required is  = %.3f Ohm\n",R2); // Result
kf1=1.613;
Wc1=W3db/kf1;
printf("\n The required critical frequency ,Wc is = %.1f radians per second\n",Wc1); // Result
//we will scale the resistor
R1s=R1/Wc1;
R2s=R2/Wc1;
printf("\n The scaled resistor R1 is  = %.4f Ohm\n",R1s); // Result
printf("\n The scaled resistor R2 is  = %.4f Ohm\n",R2s); // Result
printf("\n The assumed capacitor  is  = %.6f Farad\n",C); // Result
//for practical values of resistor and capacitor multiplying by 10^6
R1m=R1s*10^6;
R2m=R2s*10^6;
printf("\n The practical value of  resistor R1 is  = %.0f Ohm\n",R1m); // Result
printf("\n The practical value of  resistor R2 is  = %.0f Ohm\n",R2m); // Result
printf("\n The assumed capacitor  is  = %.6f Farad\n",C); // Result

disp("Stage 3");
Alpha=1.091;
R21=Alpha/2;
R22=2/Alpha;
kf2=1.819;
Wc2=W3db/kf2;
printf("\n The required critical frequency ,Wc is = %.1f radians per second\n",Wc2); // Result
//Scale resistor by Wc to achive tuning frequency
R21s=R21/Wc2;
R22s=R22/Wc2;
printf("\n The scaled resistor R1 is  = %.5f Ohm\n",R21s); // Result
printf("\n The scaled resistor R2 is  = %.4f Ohm\n",R22s); // Result
//for practical values of resistor and capacitor multiplying by 10^6
R21m=R21s*10^6;
R22m=R22s*10^6;
printf("\n The practical value of  resistor R1 is  = %.0f Ohm\n",R21m); // Result
printf("\n The practical value of  resistor R2 is  = %.0f Ohm\n",R22m); // Result
printf("\n The assumed capacitor  is  = %.6f Farad\n",C); // Result

