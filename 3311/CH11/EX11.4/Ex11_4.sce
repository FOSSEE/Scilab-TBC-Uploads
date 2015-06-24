// chapter 11
// example 11.4
// Plot a curve of load power against firing delay angle and determine required thyristor rating
// page-722
clear;
clc;
clf;
// given
R=10; // in ohm
E1=100; // in V
E2=70.7; // in V
f=50; // in Hz (used by the author)
// calculate
w=2*%pi*f;
alpha=[0:0.1:%pi];
P0=1000-(500*alpha-250*sin(2*alpha))/%pi;
plot2d(alpha,P0,nax=[2,3,2,3],rect=[0,0,%pi,1000]);
PRV_12=E1*sqrt(2);
PRV_34=E2*sqrt(2);
printf("\nTHe peak reverse voltage for thyristor T1 and T2 is \t PRV=%.f V",PRV_12);
printf("\nTHe peak reverse voltage for thyristor T3 and T3 is \t PRV=%.f V",PRV_34);
I_T_max_12=E1*sqrt(2)/R;
I_T_max_34=E2*sqrt(2)/R;
I_T_rms_12=I_T_max_12/2;
I_T_rms_34=I_T_max_34/2;
printf("\nTHe maximum current for thyristor T1 and T2 is \t I_T_12=%.1f A",I_T_max_12);
printf("\nTHe maximum current for thyristor T3 and T3 is \t I_T_34=%.1f A",I_T_max_34);
printf("\nTHe rms current for thyristor T1 and T2 is \t I_T_12=%.1f A",I_T_rms_12);
printf("\nTHe rms current for thyristor T3 and T3 is \t I_T_34=%.1f A",I_T_rms_34);