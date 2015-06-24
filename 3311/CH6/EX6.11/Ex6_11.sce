// chapter 6
// example 6.11
// Find displacement factor, harmonic factor and input power factor
// page-301
clear;
clc;
// given
E=120; // in V (voltage supply)
f=50; // supply frequency
alpha=%pi/6; // in radian (firing angle)
// calculate
DF=cos(-alpha/2); // calculation of displacement factor
// Since HF=sqrt((Irms/Irms1)^2-1) where Irms=Idc*sqrt(1-(alpha/%pi)) and Irms1=(2*sqrt(2)*Idc/%pi)*cos(alpha/2) 
//putting both value in formula for HF, we get HF=sqrt((sqrt(1-(alpha/%pi))/((2*sqrt(2)/%pi)*cos(alpha/2)))^2-1)
HF=sqrt((sqrt(1-(alpha/%pi))/((2*sqrt(2)/%pi)*cos(alpha/2)))^2-1); // calculation of harmonic factor of input current
// since pf=(Irms1/Irms)*cos(alpha/2) , putting the value of both we get pf=(2*sqrt(2)/%pi)*cos(alpha/2)/(qrt(1-(alpha/%pi)))
PF=(2*sqrt(2)/%pi)*cos(alpha/2)/(sqrt(1-(alpha/%pi))); // calculation of input power factor
printf("\nThe displacement factor is \t\t DF=%.4f",DF);
printf("\nThe harmonic factor of input current is  HF=%.2f percent",HF*100);
printf("\nThe input power factor is \t\t PF=%.3f ",PF);
if PF>0 then
    printf("(lagging)");
else
    printf("(leading)");
end
// Note: The answer for DF, HF, PF varies slightly due to precise calculation upto 6 decimal digit where as there is 2 decimal digit calculation in the book