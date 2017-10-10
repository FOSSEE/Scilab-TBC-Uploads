
//To Calculate the Reactance of Capacitor for different frequencies of Alternating Currents

//Example 39.2

clear;

clc;

C=200*10^-6;//Capacitance of the Capacitor in Faraday

f1=10;//Frequency of first AC source in Hz

f2=50;//Frequency of Second AC Source in Hz

f3=500;//Frequency of Third AC Source in Hz

Xc1=1/(2*%pi*f1*C);//Reactance of the Capacitor when connected to 10 Hz AC source

printf("(a) Reactance of capacitor for 10 hz source = %.0f ohms",Xc1);

Xc2=1/(2*%pi*f2*C);//Reactance of the Capacitor when connected to 50 Hz AC source

printf("\n (b) Reactance of capacitor for 15 hz source= %.0f ohms",Xc2);

Xc3=1/(2*%pi*f3*C);//Reactance of the Capacitor when connected to 500 Hz AC source

printf("\n (c) Reactance of capacitor for 500 hz source = %.1f ohms",Xc3);
