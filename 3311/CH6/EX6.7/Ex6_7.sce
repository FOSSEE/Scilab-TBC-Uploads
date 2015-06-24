// chapter 6
// example 6.7
// fig. E6.7
// Determine the firing angle
// page-290-291
clear;
clc;
// given
Erms=220; // in V (voltage supply)
R=0.5; // in ohm (load resistance)
Idc=10; // in A (output current)
Ec_a=135; Ec_b=-145; // in V (capacitor voltage)
// calculate
Em=Erms*sqrt(2); // calculation of rms voltage
Edc_a=Idc*R+Ec_a; // calculation of dc output voltage
alpha_a=acosd(%pi/(2*Em)*Edc_a); // calculation of firing angle when Vc=135 V
Edc_b=Idc*R+Ec_b; // calculation of dc output voltage
alpha_b=acosd(%pi/(2*Em)*Edc_b); // calculation of firing angle when Vc=-145 V
printf("\nThe firing angle when Ec= %.f V is \t= %.f degree",Ec_a,alpha_a);
printf("\n\nThe firing angle when Ec= %.f V is \t= %.f degree",Ec_b,alpha_b);