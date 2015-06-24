// chapter 8
// example 8.8
// Calculate the mean values of load voltage and current
// page-460-462
clear;
clc;
// given
Edc=80; // in V (dc source)
T=2; // in ms (chopping period)
L=8; // in mH
R=4; // in ohm
Ton_Toff_1= 1/1;
Ton_Toff_2= 4/1;
Ton_Toff_3= 1/4;
// calculate
L=L*1E-3; // changing unit from mH to H
tou=L/R;
T=T*1E-3;
//part-a
// since Ton/Toff=1/1 therefore Ton=Toff or 
Ton=T/2;
Toff=Ton;
I0_max=(Edc/R)*((1-exp(-Ton/tou))/(1-exp(-T/tou)));
I0_min=I0_max*exp(-Toff/tou);
E0=Edc*(Ton/T);
I0_av=E0/R;
printf("\nWhent Ton/Toff=1/1,")
printf("\n\t\tThe maximum output current is \t\t I0_max=%.2f A", I0_max);
printf("\n\t\tThe minimum output current is \t\t I0_min=%.2f A", I0_min);
printf("\n\t\tThe mean value of load voltage is \t E0=%.f V",E0);
printf("\n\t\tThe mean value of load current is \t I0_av=%.f A",I0_av);
//part-b
// since Ton/Toff=4/1 therefore Ton=4Toff and Ton+Toff=T or 5*Toff=T therefore we get
Toff=T/5;
Ton=4*Toff;
I0_max=(Edc/R)*((1-exp(-Ton/tou))/(1-exp(-T/tou)));
I0_min=I0_max*exp(-Toff/tou);
E0=Edc*(Ton/T);
I0_av=E0/R;
printf("\nWhent Ton/Toff=4/1,")
printf("\n\t\tThe maximum output current is \t\t I0_max=%.2f A", I0_max);
printf("\n\t\tThe minimum output current is \t\t I0_min=%.2f A", I0_min);
printf("\n\t\tThe mean value of load voltage is \t E0=%.f V",E0);
printf("\n\t\tThe mean value of load current is \t I0_av=%.f A",I0_av);
//part-c
// since Ton/Toff=1/4 therefore Toff=4*Toff and Ton+Toff=T or 5*Ton=T therefore we get
Ton=T/5;
Toff=5*Ton;
I0_max=(Edc/R)*((1-exp(-Ton/tou))/(1-exp(-T/tou)));
I0_min=I0_max*exp(-Toff/tou);
E0=Edc*(Ton/T);
I0_av=E0/R;
printf("\nWhent Ton/Toff=1/4,")
printf("\n\t\tThe maximum output current is \t\t I0_max=%.2f A", I0_max);
printf("\n\t\tThe minimum output current is \t\t I0_min=%.2f A", I0_min);
printf("\n\t\tThe mean value of load voltage is \t E0=%.f V",E0);
printf("\n\t\tThe mean value of load current is \t I0_av=%.f A",I0_av);

// Note: 1 The answer for I0_min of part-b is wrong in the book due to calculation mistake.
//       2.the answers varies slightly due to precise calculation