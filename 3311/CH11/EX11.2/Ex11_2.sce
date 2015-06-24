// chapter 11
// example 11.2
// fig. Ex.  11.2
// Determine rms value of output voltage, input power factor and average input current
// page-719-721
clear;
clc;
// given
R=6; // in ohm
Es=230; // in V (supply voltage)
f=50; // in Hz
alpha=%pi/2; // in degree
n=3
// calculate
E0_rms=sqrt((2*Es^2/(4*%pi))*(integrate('1-cos(2*wt)','wt',alpha,%pi)+integrate('1-cos(2*wt)','wt',%pi,(2*%pi))));// calculation of rms value of output voltage
I0_rms=E0_rms/R;// calculation of rms value of output current
P0=I0_rms^2*R;// calculation of load power
Ea=Es*I0_rms;// calculation of input voltage-ampere rating
pf=P0/Ea;// calculation of input power factor
Edc=(1/(2*%pi))*(sqrt(2)*Es*integrate('sin(wt)','wt',alpha,%pi)+sqrt(2)*Es*integrate('sin(wt)','wt',%pi,(2*%pi)));// calculation of average output voltage
Idc=Edc/R;// calculation of average input current
printf("\nThe rms value of output voltage is \t E0_rms=%.2f V",E0_rms);
printf("\nThe input power factor is \t\t pf=%.3f ",pf);
if pf>0 then
    printf(" (lagging)");
else
    printf(" (leading)");
end
printf("\nThe average input current is \t\t Idc=%.2f A",Idc);
