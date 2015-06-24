// Chapter9
// Maximum and minimum Frequency  of oscillation 
// Page.No-307
// Example9_2
//Figure 9.9
// Given
clear;clc;
// for minimium frequency
R=11100;            //in Ohm
C=0.1*10^-6;           //in F
f=1/(2*%pi*R*C);
printf("\n The mimimum frequency of oscillation  = %.1f Hz\n",f); // Result
// for maximum frequency
R=1100;            //in Ohm
C=0.1*10^-6;           //in F
fm=1/(2*%pi*R*C);
printf("\n The maximum frequency of oscillation  = %.0f Hz\n",fm); // Result
printf("\n For C=0.001microF, the range is from %.1f Hz to %.0f Hz\n  ", f*10,fm*10);//Result
printf("\n For C=0.0001microF, the range is from %.1f Hz to %.0f Hz\n  ", f*100,fm*100);//Result
Rf=10000+2700;          //in ohm
Ri=5600;                //in Ohm
Av=1+Rf/Ri;
printf("\n Gain ,Av is %.2f \n  ", Av);//Result
