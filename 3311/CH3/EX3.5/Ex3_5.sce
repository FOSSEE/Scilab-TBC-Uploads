// chapter 3
// example 3.5
// Design free-running UJT relaxation oscillator
// page-105-106
clear;
clc;
// given
fmin=5; // in Hz (minimum frequency)
fmax=50; // in Hz (maximum frequency)
E_dc=12; // in V (DC supply)
I_P=80; // in mA (peak current)
T=8; // in us (trigger time)
V_drop=1; // in V (voltage drop across PUT)
Rs=39; // in ohm (Assumption as done in the book)
Ig=1; // in mA (assumption as done in the book
// calculate
// since T=Rs*C
C=T/Rs; // calculation of capacitance (in uF)
printf("\nThe value of capacitance is \t\t C=%.2f uF",C);
I_P=I_P*1E-3; // changing unit from mA to A
V_P=(I_P*Rs)+V_drop; // calculation of peak point voltage
// since V_P=neta*E_dc+V_D, neglecting V_D, we get
neta=V_P/E_dc; // calculation of intrinsic stand-off ratio
Tmax=1/fmin; // calculation of maximum time period
Tmin=1/fmax; // calculation of maximum time period
C=C*1E-6; // changing unit from uF to F
Rmax=Tmax/(C*log(E_dc/(E_dc-V_P))); // calculation of maximum value of R
Rmin=Tmin/(C*log(E_dc/(E_dc-V_P))); // calculation of minimum value of R
I_V_max=E_dc/Rmin; // calculation of maximum anode current
I_V_min=E_dc/Rmax; // calculation of minimum anode current
// since Ig=2*neta*E_dc/Rg , therefore 
Rg=2*neta*E_dc/Ig; // calculation of gate resistance in k-ohm
R1=Rg/neta; // calculation of R1 resistance
R2=Rg/(1-neta); // calculation of R1 resistance
Rmax=Rmax*1E-6; // changing unit from ohm to M-ohm
Rmin=Rmin*1E-6; // changing unit from ohm to M-ohm
I_V_max=I_V_max*1E6; // changing unit from A to uA
I_V_min=I_V_min*1E6; // changing unit from A to uA
printf("\nThe peak point voltage is \t\t V_P=%.2f V",V_P);
printf("\nThe intrinsic stand-off ratio is \t neta=%.2f",neta);
printf("\nThe maximum value of R is \t\t Rmax=%.2f M-ohm",Rmax);
printf("\nThe minimum value of R is \t\t Rmin=%.2f M-ohm",Rmin);
printf("\nThe maximum value of anode current is \t I_V_max=%.2f uA",I_V_max);
printf("\nThe minimum value of anode current is \t I_V_min=%.f uA",I_V_min);
printf("\nThe value of gate resistance is \t Rg=%.2f k-ohm",Rg);
printf("\nThe value of R1 is \t\t\t R1=%.f k-ohm",R1);
printf("\nThe value of R2 is \t\t\t Rg=%.2f k-ohm",R2);
// Note : the answee of Rmax, I_V_max, Rg and R2  varies slightly due to exact calculation