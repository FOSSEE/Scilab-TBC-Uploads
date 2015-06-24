// chapter 11
// example 11.5
// fig. 11.9
// Determine rms current of tyristor T1 and T2, rms current of Thyristor T3 and T4 and input power factor
// page-722-723
clear;
clc;
// given
e1=130; // in V
e2=130; // in V
Ep=260; // in V
E0=195; // in V
R=6; // in ohm 
alpha=%pi/2; // in radian (firing angle)
// calculate
I1=sqrt((1/(2*%pi*R^2))*2*(e1+e2)^2*integrate('(sin(wt))^2','wt',alpha,%pi)); // calculation of rms current of tyristor T1 and T2
I2=sqrt((1/(2*%pi*R^2))*2*(e1^2)*integrate('(sin (wt))^2','wt',0,alpha)); // calculation of rms current of Thyristor T3 and T4
Iw2=sqrt(2)*I1; // calculation of rms current of second winding
Iw1=sqrt((sqrt(2)*I1)^2+(sqrt(2)*I2)^2); // calculation of rms current of first winding
Ea=e1*Iw1+e2*Iw2; // calculation of volt-ampere rating
P0=E0^2/R; // calculation of maximum power
PF=P0/Ea; // calculation of power factor
printf("\nThe rms current of tyristor T1 and T2 is \t I1=%.2f A",I1);
printf("\nThe rms current of Thyristor T3 and T4 is \t I2=%.2f A",I2);
printf("\nThe power factor is \t\t\t pf=%.3f",PF);
if PF>0 then
    printf(" (lagging)");
else
    printf(" (laeding)");
end
