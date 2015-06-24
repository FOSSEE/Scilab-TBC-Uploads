// chapter 6
// example 6.15
// Determine various parameters
// page-322-323
clear;
clc;
// given
E_L=220; // in V (line voltage)
f=50; // in Hz (supply frequency)
R_L=10; // in ohm
neta=25; // in percent
// calculate
Es=E_L/sqrt(3); // calculation of phase voltage
Em=sqrt(2)*Es; // calculation of peak voltage
Edc_max=(3*sqrt(3)/(2*%pi))*Em; // calculation of maximum average load voltage
Edc=(neta/100)*Edc_max; // calculation of average load voltage
if neta>86.6 then
    alpha=acosd((2*%pi/(3*sqrt(3)*Em))*Edc);
else 
    alpha=acosd((2*%pi/(3*Em))*Edc-1)-30;
    
end
printf("\nThe delay angle \t\t\t %.1f degree",alpha);
Idc=Edc/R_L; // calculation of average load current
alpha=alpha*%pi/180; // changing from degree to radian
Erms=sqrt((Em^2/(2*%pi/3))*integrate('(sin(wt))^2','wt',0.691*%pi,%pi)); // calculation of rms voltage
Irms=Erms/R_L;// calculation of rms current
I_T_dc=Idc/3; // calculation of thyristor average load current
I_T_rms=Irms/sqrt(3); // calculation of thyristor rms current
Pdc=Idc^2*R_L; // calculation of dc power
Pac=Irms^2*R_L; // calculation of ac power
neta=(Pdc/Pac)*100; // calculation of rectification efficiency
Input_VA=3*Es*I_T_rms; // calculation of input volt-ampere rating
TUF=(Pdc/Input_VA)*100; // calculation of transformer utilisation factor
pf=Pac/Input_VA; // calculation of input power factor
printf("\nThe average output current is \t\t Idc=%.3f A",Idc);
printf("\nThe rms output current is \t\t Irms=%.2f A",Irms);
printf("\nThe thyristor average current is \t I_T_dc=%.2f A",I_T_dc);
printf("\nThe thyristor rms current is \t\t I_T_rms=%.2f A",I_T_rms);
printf("\nThe rectification efficiency is \t %.2f percent",neta);
printf("\nThe transformer utilisation factor is \t TUF=%.2f percent",TUF);
printf("\nThe input power factor is \t\t pf=%.2f",pf);
if pf>0 then
    printf(" (lagging)");
else
    printf(" (leading)");
end
// Note: The answer for Erms, Irms, I_T_rms, neta, TUF, pf vary slightly due to precise calculation
