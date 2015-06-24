//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 367 and 368
clear;
clc;

//Given

f1=40;//lowest operating frequency in hertz
f2=40D3;//highest operating frequency in hertz
C1=40D-12;//lowest capacitance of variable capacitor in farads
C2=400D-12;//highest capacitance of variable capacitor in farads
A=10;//gain of amplifier
R2=7D3;//resistance of other arm of bridge in ohms

//Solution

R=1/(2*%pi*f1*C2);//resistance R of Wien bridge oscillator in ohms
printf("Since,capacitance can change in the ratio of 10:1 only\n ");
printf("For R = %.2f Mega-ohms frequency range 40 Hz to 400 Hz\n ",R/10^6);
printf("For R = %.2f kilo-ohms frequency range 400 Hz to 4 kHz\n ",R/10^5);
printf("For R = %.2f kilo-ohms frequency range 4 kHz to 40 kHz\n\n ",R/10^6);

AB=1;//loop gain is unity for oscillator
B=AB/A;//feedback factor beta
R1_to_R2=1/(1/3-B)-1;//ratio of R1/R2 for wien bridge oscillator
R1=R1_to_R2*R2;//resistor R1 in ohms
printf("Resistance R1 = %d kilo-ohms",R1/10^3);
