// chapter 6
// example 6.13
// Determine average load voltage, current, PIV and power dssipation
// page-320-321
clear;
clc;
// given
E_line=380; // in V (voltage line supply)
I=32; // in A (load-current)
alpha1=0, alpha2=45; // in degree (firing angle)
Vt=1.2; // in V (voltage drop across SCR)
// calculate
Em=E_line*sqrt(2/3); // calculation of peak value of voltage
Edc1=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha1)-Vt; // calculation of average load voltage for alpha=0 degree
Edc2=(3*sqrt(3)/(2*%pi))*Em*cosd(alpha2)-Vt; // calculation of average load voltage for alpha=30 degree
Irms=I/sqrt(3); // calculation of rms current
PIV=sqrt(2)*E_line;// calculation of peak inverse voltage
Pavg=(1/(2*%pi))*(Vt*I)*integrate('1','wt',alpha1,(alpha1+(2*%pi/3)));// calculation of average power dissipation in each thyristor
printf("\nThe average load voltage for alpha=%.f degree is \t\t Edc1=%.1f V",alpha1,Edc1);
printf("\nThe average load voltage for alpha=%.f degree is \t Edc1=%.1f V",alpha2,Edc2);
printf("\nThe rms current is \t\t\t\t\t Irms=%.2f A",Irms);
printf("\nThe Peak Inverse Voltage is \t\t\t\t PIV=%.1f V",PIV);
printf("\nThe average power dissipation in each thyristor is \t Pavg=%.1f W",Pavg);