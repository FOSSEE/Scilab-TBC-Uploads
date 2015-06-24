// Example 6.22.1  page 6.68

clc;
clear;

f1=10d6;    //frequency
f2=100d6
t=4d-9;
Pdc=280d-6;     //optincal output power

w1=2*%pi*f1;    //computing omega
Pout1=Pdc*10^6/(sqrt(1+(w1*t)^2));      //computing output power

w2=2*%pi*f2;    //computing omega
Pout2=Pdc*10^6/(sqrt(1+(w2*t)^2));      //computing output power

printf("Ouput power at 10 MHz is %.2f microwatt.\nOuput power at 100 MHz is %.2f microwatt.\nConclusion when device is drive at higher frequency the optical power reduces.\nNOTE - calculation error. In the book square term in the denominater is not taken.",Pout1,Pout2);

BWopt = sqrt(3)/(2*%pi*t);
BWelec = BWopt/sqrt(2);
BWopt=BWopt*10^-6;
BWelec=BWelec*10^-6;

printf("\n3 dB optical power is %.2f MHz.\n3 dB electrical power is %.2f MHz.",BWopt,BWelec);


//calculation error. In the book square term in the denominater is not taken.
//answers in the book - 
//Ouput power at 10 MHz is 228.7 microwatt.(incorrect)
//Ouput power at 100 MHz is 175 microwatt.(incorrect)
//3 dB optical power is 68.8 MHz, deviation of 0.12
//3 dB electrical power is 48.79 MHz, deviation of 0.06 
