// chapter 11
// example 11.6
// Determine rms output phase voltage, input power factor
// page-741-742
clear;
clc;
// given
E_L=210; // in V
R=5; // in ohm 
alpha=%pi/3; // in radian (firing angle)
// calculate
Es=E_L/sqrt(3);
E0=sqrt((2*Es^2/(4*%pi))*(integrate('1-cos(2*wt)','wt',alpha,%pi)+integrate('1-cos(2*wt)','wt',%pi,(2*%pi))));// calculation of rms output pahse voltage
Ia=E0/R; // calculation of rms current
P0=3*Ia^2*R; // calculation of maximum power
I_L=Ia; // calculation of load current
EA=3*Es*I_L; // calculation of volt-ampere rating
pf=P0/EA; // calculation of power factor
printf("\nThe rms output phase voltage is \t E0=%.3f V",E0);
printf("\nThe power factor is \t\t\t pf=%.3f",pf);
if pf>0 then
    printf(" (lagging)");
else
    printf(" (laeding)");
end
// Note part-c of this question is a derivation type which i havenot done