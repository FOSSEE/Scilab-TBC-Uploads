// chapter 6
// example 6.24
// Determine various parameters
// page-358-359
clear;
clc;
// given
E_line=220; // in V (line voltage)
f=50; // supply frequency
R_L=10; // in ohm
ratio=25; // in percent (ratio of  given to maximum average output voltage)
alpha_min=0; // in radian (firing angle for max average output voltage)
// calculate
Ep=E_line/sqrt(3); // calculation of phase voltage
Em=Ep*sqrt(2); // calculation of peak voltage
Edc_max=(3*sqrt(3)*Em/(2*%pi))*(1+cos(alpha_min)); // calculation of maximum average output voltage
Edc=(ratio/100)*Edc_max; // calculation of average output voltage
// since Edc=(3*sqrt(3)*Em/(2*%pi)*(1+cos(alpha));, therefore we get
alpha=acosd((2*%pi/(3*sqrt(3)*Em))*Edc-1); // calculation of firing angle
printf("\nThe firing angle is \t\t\t %.f degree",alpha);
Idc=Edc/R_L; // calculation of average output current
alpha=alpha*(%pi/180); // changing unit from degree to radian
Erms=(3*Em/2)*sqrt((%pi-alpha+0.5*sin(2*alpha))/%pi); // calculation of rms voltage
Irms=Erms/R_L; // calculation of rms current
I_T_avg=Idc/3; // calculation of SCR average current
I_T_rms=Irms*sqrt(2)/3; // calculation of SCR rms current
neta=(Edc*Idc)/(Erms*Irms)*100; // calculation of Rectification efficiency
Is=Irms*sqrt(2/3);
Es=3*Ep;
TUF=(Edc*Idc)/(Es*Is); // calculation of Transformer Utilisation Factor
printf("\nThe average output current is \t\t Idc=%.2f A",Idc);
printf("\nThe rms current is \t\t\t Irms=%.2f A",Irms);
printf("\nThe thyristor average current is \t I_T_avg=%.2f A",I_T_avg);
printf("\nThe thyristor rms current is \t\t I_T_rms=%.2f A",I_T_rms);
printf("\nThe Rectification efficiency is \t neta=%.1f percent",neta);
printf("\nThe Transformer Utilisation Factor is \t TUF=%.3f",TUF);
// Note : The formula written in the book to calculate Erms and Is is wrong but the answer in the book is according to the correct formula. I have used the correct formula.