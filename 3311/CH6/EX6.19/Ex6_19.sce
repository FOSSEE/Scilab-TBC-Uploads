// chapter 6
// example 6.19
// Find out SCR rating
// page-343-344
clear;
clc;
// given
Es=415; // in V (voltage supply)
f=50; // supply frequency
R=100; // in ohm (load resistance)
alpha=0; // in radian
// calculate
Em=Es*sqrt(2/3); // calculation of peak voltage
Edc=(3*sqrt(3)*Em/%pi)*cos(alpha); // calculation of average voltage
Idc=Edc/R; // calculation of average output current
I_T_av=(1/(2*%pi))*Idc*integrate('1','wt',(alpha+%pi/6),(alpha+5*%pi/6)); // calculation of SCR average current
I_T_rms=sqrt((1/(2*%pi))*Idc^2*integrate('1','wt',(alpha+%pi/6),(alpha+5*%pi/6))); // calculation of SCR rms current
I_T_peak=Idc; // calculation of SCR peak current
PIV=sqrt(3)*Em; // calculation of peak inverse voltage of SCR
printf("\nThe SCR average current is \t I_T_av=%.3f A",I_T_av);
printf("\nThe SCR rms current is \t\t I_T_rms=%.3f A",I_T_rms);
printf("\nThe SCR peak current is \t I_T_peak=%.3f A",I_T_peak);
printf("\n\nThe peak inverse voltage of SCR is \t PIV>=%.f A",PIV);
// Note: The answers vary slightly due to precise calculations upto 6 decimal digit