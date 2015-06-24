// chapter 9
// example 9.29
// Design a 400 Hz parallel invertor
// page-663-664
clear;
clc;
// given
P0=360; // in W (output power)
E_L=120; // in V (output voltage)
f=400; // in Hz
PF=0.7; // (lagging) (power factor)
Edc=28; // in V (source voltage)
Zin=80-23*%i; // filter input impedence (assumption as done in the book)
neta=85; // in percent (assumption as done in the book)
Toff=12; // in us (assumption for circuit turn-off time as done in the book)
Ip_SCR=14; // in A (assumption for SCR peak current as done in the book)
// calculate
R_L=E_L^2*PF^2/P0; // calculation of load resistance
X_L=(R_L/PF)*sqrt(1-PF^2); // calculation of load reactance
Z_L_magnitude=sqrt(R_L^2+X_L^2); // calculation of load impedence
Z_L_phase=acosd(PF); // calculation of load impedence phase
Z_D=abs(Z_L_magnitude)/2; // calculation of filter design impedence
W_D=2*%pi*f; // calculation of dsign radian frequency
C1=1/(6*Z_D*W_D); // calculation of capacitance C1
C2=1/(3*Z_D*W_D); // calculation of capacitance C2
L1=9*Z_D/(2*W_D); // calculation of inductance L1
L2=Z_D/W_D; // calculation of inductance L1
Rin=real(Zin); // calculation of filter input resistance
Xin=abs(imag(Zin)); // calculation of filter input reactance
Zin_magnitude=abs(Zin); // calculation of filter input impedence magnitude
E_SQ=(sqrt(2)/4)*%pi*Zin_magnitude*(P0/Rin)^0.5 // calculation of input voltage to filter
n=E_SQ/Edc; // calculation of transfromer turns ratio
Pi=P0/(neta/100); // calculation of input power
I_T_av=P0*Zin_magnitude/(2*Edc*Rin); // calculation of average thyristor current
V_BO=2.5*Edc; // calculation of blocking voltage
L=6*Edc*Toff/(%pi*Ip_SCR); // calculation of commutating inductance
C=3*Toff*Ip_SCR/(8*%pi*Edc); // calculation of commutating capacitance
di_dt=2*Edc/L; // calculation of rate of change of current
printf("\nThe load resistance is \t\t\t\t R_L=%.f ohm",R_L);
printf("\nThe load reactance is \t\t\t\t X_L=%.f ohm",X_L);
printf("\nThe magnitude of load impedence is \t\t Z_L_magnitude=%.1f ohm",Z_L_magnitude);
printf("\nThe phase of load impedence is \t\t\t Z_L_phase=%.f degree",Z_L_phase);
printf("\nThe filter design impedence is \t\t\t Z_D=%.2f ohm",Z_D);
printf("\nThe design radian frequency is \t\t\t W_D=%.f rad/s",W_D);
printf("\nThe capacitance C1 is \t\t\t\t C1=%.1f uF",C1*1E6);
printf("\nThe capacitance C2 is \t\t\t\t C2=%.1f uF",C2*1E6);
printf("\nThe capacitance L1 is \t\t\t\t L1=%.1f mH",L1*1E3);
printf("\nThe capacitance L2 is \t\t\t\t L1=%.f mH",L2*1E3);
printf("\nThe filter input resistance is \t\t\t Rin=%.f ohm",Rin);
printf("\nThe filter input reactance is \t\t\t Xin=%.f ohm",Xin);
printf("\nThe magnitude of filter input impedence is \t Zin_magnitude=%.f ohm",Zin_magnitude);
printf("\nThe input voltage to filter is \t\t\t E_SQ=%.f V",E_SQ);
printf("\nThe transfromer turns ratio is \t\t\t n=%.f",n);
printf("\nThe input power is \t\t\t\t Pin=%.f W",Pi);
printf("\nThe verage thyristor current is \t\t I_T_av=%.1f A",I_T_av);
printf("\nThe blocking voltage is \t\t\t V_BO=%.f V",V_BO);
printf("\nThe commutating inductance is \t\t\t L=%.1f uH",L);
printf("\nThe commutating capacitance is \t\t\t C=%.2f uF",C);
printf("\nThe rate of change of current at t=0 s is \t di/dt=%.2f A/us",di_dt);
// Note: 1. The answer varies slightly due to precise calculation.
//       2. Most of the answers have been rounded off in the book and then used for further calculation. I have used the exact values for the calculations