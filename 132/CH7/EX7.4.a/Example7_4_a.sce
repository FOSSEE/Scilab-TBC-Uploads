//Example 7.4 (a)
//Program to Calculate Value of Rb in the Biasing Circuit
clear;
clc ;
close ;
//Given Circuit Data
Vcc=6; //V
Vbe=0.3; //V
Icbo=2*10^(-6); //A
Ic=1*10^(-3); //A
Beeta=20;
//Calculation
//Case 1: Considering Icbo and Vbe in the calculations
Ib=(Ic-(Beeta+1)*Icbo)/Beeta;
Rb1=(Vcc-Vbe)/Ib;
//Case 2: Neglecting Icbo and Vbe in the calculations
Ib=Ic/Beeta;
Rb2=Vcc/Ib;
//Percentage Error
E=(Rb2-Rb1)/Rb1*100;
//Displaying The Results in Command Window
printf("\n\t The Base Resistance is, Rb = %f kOhms .",Rb1/10^3);
printf("\n\t The Base Resistance (Neglecting Icbo and Vbe) is, Rb = %f kOhms .",Rb2/10^3);
printf("\n\t Percentage Error is = %f percent .",E);