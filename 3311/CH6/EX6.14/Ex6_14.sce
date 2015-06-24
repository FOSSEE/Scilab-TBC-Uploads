// chapter 6
// example 6.14
// Calculate thyristor current ratings
// page-321
clear;
clc;
// given
E_line=415; // in V (voltage line supply) The value is used  in the solution but not mentioned
R_L=10; // in ohm
alpha=30; // in degree (firing angle)
// calculate
Em=E_line*sqrt(2/3); // calculation of peak value of voltage
Edc=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha); // calculation of average load voltage
Idc=Edc/R_L; // calculation of average load current
I_T_rms=Idc/sqrt(3); // calculation of thyristor rms current
I_T_dc=Idc/3; // calculation of thyristor average load current
I_T_peak=Idc; // calculation of thyristor peak current
PIV=E_line*sqrt(2); // calculation of thyristor peak inverse voltage
printf("\nThe average load current \t\t Idc=%.1f A",Idc);
printf("\nThe thyristor average load current is \t I_T_dc=%.1f A",I_T_dc);
printf("\nThe thyristor rms current is \t\t I_T_rms=%.1f A",I_T_rms);
printf("\nThe thyristor peak current is \t\t I_T_peak=%.1f A",I_T_peak);
printf("\nThe thyristor peak inverse voltage is \t PIV=%.1f V",PIV);