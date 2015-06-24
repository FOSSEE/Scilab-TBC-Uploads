// chapter 6
// example 6.27
// fig. Ex. 6.27
// Find the mean voltage at the load
// page-371-372
clear;
clc;
// given
E_line=415; // in V (line voltgae)
Beta=18; // in degree (advance angle)
u=3.8; // in degree (overlap angle)
// calculate
Em=E_line*sqrt(2/3); // calclation of peak voltage
Edc=(3*sqrt(3)/(4*%pi))*Em*(cosd(Beta)+cosd(Beta-u)); // calclation of mean voltage at the load
printf("\nThe mean voltage at the load is \t Edc=%.1f V",Edc);
