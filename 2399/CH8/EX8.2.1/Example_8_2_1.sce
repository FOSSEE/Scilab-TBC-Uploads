// Example 8.2.1 
clc;
clear;
P=10^-9;    //probability of error
eta=1;      //ideal detector
h=6.626d-34 //plank's constant
c=3d8;     //speed of light
lamda=1d-6; //wavelength
B=10^7;     //bit rate

Mn= - log(P);
printf("\n The quantum imit at the receiver to maintain bit error rate 10^-9 is (%.1f*h*f)/eta.",Mn);
f=c/lamda
Popt= 0.5*Mn*h*f*B/eta;     //computing optical power
Popt_dB = 10 * log10(Popt) + 30;    //optical power in dbm
Popt=Popt*10^12;

printf("\nMinimum incident optical power is %.1f W or %.1f dBm.",Popt,Popt_dB);
