// Chapter 11
// crossover network
// Page.No-412
// Example11_4
//Figure 11.32
// Given
clear;clc;
L=1.414;            //Alpha
fc=800;         //In Hz
Rf=2-L;
printf("\n The value of Rf is = %.3f Ohm\n",Rf); // Result
Wc=2*%pi*fc;
printf("\n The critical frequency is = %.0f radians per seconds\n",Wc); // Result
R=1/Wc;
printf("\n The value of scaled Resistor R1 is  = %.7f Ohm\n",R); // Result

printf("\n The value of scaled Resistor and capacitor is  = %.0f Ohm and 10nF \n",R*10^8); // Result
