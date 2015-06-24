// chapter 6
// example 6.10
// Determine various parameters
// page-300-301
clear;
clc;
// given
E=230; // in V (voltage supply)
alpha=%pi/6; // in radian (firing angle)
// calculate
Em=E*sqrt(2); // calculation of peak output voltage
Edc=(2*Em/%pi)*cos(alpha); // calculation of average output voltage
Irms_supply='Id'; // Supply RMS current
Irms_fundamental='(2*sqrt(2)/%pi)*Id'; // Supply fundamental RMS current
pf_fundamental=cos(alpha); // calculation of fundamental power factor
pf_supply=(2*sqrt(2)/%pi)*cos(alpha); // calculation of supply power factor
hf_supply=sqrt(%pi^2/8-1); // calculation of fundamental harmonic factor
KV=sqrt(%pi^2/(8*(cos(alpha))^2)-1); // calculation of voltage ripple factor
printf("\nThe average output voltage is \t\t Edc=%.2f V",Edc);
printf("\nThe supply RMS current is \t\t Irms_supply=%s",Irms_supply);
printf("\nThe supply fundamental RMS current is \t Irms_fundamental=%s",Irms_fundamental);
printf("\nThe fundamental power factor is \t pf_fundamental=%.2f",pf_fundamental);
printf("\nThe supply power factor is \t\t pf_supply=%.2f",pf_supply);
printf("\nThe fundamental harmonic factor is \t hf_supply=%.3f",hf_supply);
printf("\nThe voltage ripple factor is \t\t KV=%.3f",KV);