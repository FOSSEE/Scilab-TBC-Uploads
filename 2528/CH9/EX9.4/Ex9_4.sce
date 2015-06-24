// Chapter9
//  value of Rf
// Page.No-313
// Example9_4
//Figure 9.15
// Given
clear;clc;
C=0.1*10^-6;           //in F
R=1000;            //in Ohm
Av=-29;
Rf=-Av*R;
printf("\n The value for Rf is = %.0f Ohm\n",Rf); // Result
f=1/(2*%pi*6^0.5*R*C);
printf("\n The  frequency ,fo  = %.0f Hz\n",f); // Result

