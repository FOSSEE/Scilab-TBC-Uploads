// chapter 6
// example 6.12
// Determine average output voltage
// page-319-320
clear;
clc;
// given
E=200; // in V (voltage supply per phase)
alpha1=0, alpha2=30, alpha3=60; // in degree (firing angle)
V_drop=1.5; // in V (voltage drop across SCR)
// calculate
Em=E*sqrt(2); // calculation of peak value of voltage
Edc1=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha1)-V_drop; // calculation of average load voltage for alpha=0 degree
Edc2=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha2)-V_drop; // calculation of average load voltage for alpha=30 degree
Edc3=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha3)-V_drop; // calculation of average load voltage for alpha=60 degree
printf("\nThe average load voltage for alpha=%.f degree\ is t Edc1=%.2f V",alpha1,Edc1);
printf("\n\nThe average load voltage for alpha=%.f degree\ is t Edc1=%.2f V",alpha2,Edc2);
printf("\n\nThe average load voltage for alpha=%.f degree\ is t Edc1=%.2f V",alpha3,Edc3);
