// chapter 9
// example 9.14
// Determine rms line and phase voltage, rms line and phase voltage at fundamental frequency, THD, DR, HF and DF of lowest order harmonic, load power and average and rms switch current
// page-584-585
clear;
clc;
// given
Edc=200; // in V (source voltage)
R=10; // in ohm
L=20; // in mH
f0=50; // in Hz (invertor frequency)
// calculate
L=L*1E-3; // changing unit from mH to H
w=2*%pi*f0; // calculation of angular velocity
E_L=sqrt(2/3)*Edc; // calculation of rms value of the output line voltage
E_P=E_L/sqrt(3); // calculation of rms value of the phase voltage
E_L1=4*Edc*cosd(30)/(sqrt(2)*%pi); // calculation of rms value of the fundamental component of the line voltage
E_P1=E_L1/sqrt(3); // calculation of rms value of the fundamental component of the phase voltage
printf("\nThe rms value of the output line voltage is \t\t\t\t E_L=%.2f V",E_L);
printf("\nThe rms value of the phase voltage is \t\t\t\t\t E_P=%.2f V",E_P);
printf("\nThe rms value of the fundamental component of the line voltage is \t E_L1=%.2f V",E_L1);
printf("\nThe rms value of the fundamental component of the line voltage is \t E_P1=%.2f V",E_P1);
E1_rms=2*Edc/(sqrt(2)*%pi);
E0_rms=(Edc/2);
THD=sqrt(E_L^2-E_L1^2)/E_L1; // calculation of total harmonic distortion
printf("\\nnThe total harmonic distortion is \t THD=%.4f or \t %.2f percent",THD,THD*100);
K=0;
for n=5:2:11
    E_Ln=4*Edc*cos(n*%pi/6)/(n*%pi*sqrt(2));
    E_Ln_n2=(E_Ln/n^2)^2;
    K=K+E_Ln_n2;
end
K=sqrt(K);
DF=K/E_L1; // calculation of distortion factor
printf("\nThe distortion factor is \t\t DF=%f or \t %.3f percent",DF,DF*100);
E_L5=4*Edc*cos(5*%pi/6)/(5*%pi*sqrt(2));
HF5=abs(E_L5/E_L1); // calculation of lowest order of harmonic factor
DF5=abs((E_L5/5^2)/E_L1); // calculation of lowest order of distortion factor
printf("\nThe lowest order harmonic factor is \t HF5=%.3f or \t %.2f percent",HF5,HF5*100);
printf("\nThe lowest order distortion factor is \t DF5=%.3f or \t %.2f percent",DF5,DF5*100);
I=0; // initialisation
for n=1:2:17
    Z_L=sqrt(R^2+(n*w*L)^2);
    theta=atand(n*w*L/R);
    I_L=4*Edc*cos(n*%pi/6)/(n*%pi*Z_L);
    I=I+I_L^2;
end
I=sqrt(I)/sqrt(2); // calculation of load current
P0=3*I^2*R; // calculation of load power
Is=P0/Edc; // calculation of average supply current
I_T_avg=Is/3; // calculation of average switch current
I_T_rms=I/sqrt(2); // calculation of rms switch current
printf("\n\nThe load power is \t\t P0=%.2f kW",P0*1E-3);
printf("\nThe average switch current is \t I_T_avg=%.2f A",I_T_avg);
printf("\nThe rms switch current is \t I_T_rms=%.2f A",I_T_rms);
// Note: 1. There is calculation mistake while calculating load current and hence the answers for P0, I_T_avg, I_T_rms are wrong in the book
//       2.The answer varies slightly due to precise calculations and the answer in the book is rounded off
