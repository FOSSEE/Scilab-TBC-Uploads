// Chapter9
//  Frequency  of oscillation 
// Page.No-310
// Example_9_3
//Figure 9.12-9.14
// Given
clear;clc;
R=1000;            //in Ohm
C=0.1*10^-6;           //in F
f=1/(2*%pi*1.732*R*C);
printf("\n The mimimum frequency of oscillation  = %.0f Hz\n",f); // Result
//Vo=(R+Xc)*I1-R*I2
W=1/((6^0.5)*C*R);
printf("\n The frequency = %.0f Hz\n",W); // Result
//Vo/V3=1+(6*Xc/R)+(5*Xc/R^2)+(Xc/R)^3;
Vr=1-(5/((W*C*R)^2));           //Vr=Vo/V3
printf("\n The Vo/V3 is = %.0f \n",Vr); // Result
printf("\n The gain of ladder network is B= V3/Vo = 1/%.0f \n",Vr); // Result

