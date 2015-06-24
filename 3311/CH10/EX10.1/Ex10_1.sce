// chapter 10
// example 10.1
// Determine required supply voltage, thyristor rating and power factor of the supply current
// page-698-699
clear;
clc;
// given
m=3; // number of phases
PF=0.7; // power factor (lagging)
Edc=190; // in V (load voltage)
I_L=45; // in A 
// calculate
// since Edc=(m/%pi)*Eph*sin(%pi/m), therefore we get
Eph=Edc/((m/%pi)*sin(%pi/m)); // calculation of required supply voltage
Eph_max=Eph*sqrt(2); // calculation of required supply voltage maximum value
Imax=I_L*sqrt(2); // calculation of maximum value of cycloconvertor current
Irms=Imax/sqrt(3); // calculation of thyristor rms current
PIV=sqrt(3)*Eph_max; // calculation of peak inverse voltage
Irms_1_3=sqrt(I_L^2/3); // calculation of rms current for one-third cycle
Pin=(1/3)*Edc*I_L*PF; // calculation of input power per phase
pf=Pin/(Eph*Irms_1_3); // calculation of power factor of the supply current
printf("\nThe required supply voltage is \t\t\t Eph=%.2f V",Eph);
printf("\nThe thyristor ratings are \t\t\t Irms==%.2f A \t PIV=%.2f V",Irms,PIV);
printf("\nThe power factor of the supply current is \t pf=%.2f",pf);
// Note: 1. The answers vary slightly due to precise calculation.