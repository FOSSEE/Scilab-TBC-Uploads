// chapter 6
// example 6.9
// fig. Ex.6.9
// Find average output current and power delivered
// page-299-300
clear;
clc;
// given
E=230; // in V (voltage supply)
f=50; // supply frequency
alpha=%pi/4; // in radian (firing angle)
R=10; // in ohm (load resistance)
L=10; // in mH 
Ec=120; // in V (capacitor voltage)
// calculate
Em=E*sqrt(2); // calculation of peak voltage
Edc=(Em/(2*%pi))*(integrate('sin(wt)','wt',alpha,%pi)+abs(integrate('(sin(wt))','wt',%pi,2*%pi))); // The formula used in the book has little mistake
Idc=(Edc-Ec)/R; // calculation of average output current
P=Ec*Idc; // calculation of power delivered
printf("\nThe average output current is \t Idc=%.2f A",Idc);
printf("\nThe power delivered is \t\t P=%.2f W",P);
// Note: 1. The integrating formula used in the book has little mistake but the answer is same because they have mistake in calculation. I have used the correct formula 
//       2. The answers vary slightly due to precise calculation upto 6 decimal digit. In the book, the calculation is upto 2 decimal digit
