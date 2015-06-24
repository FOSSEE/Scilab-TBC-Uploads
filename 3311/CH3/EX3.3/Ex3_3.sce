// chapter 3
// example 3.3
// Design UJT relaxation oscillator
// page-99-100
clear;
clc;
// given
neta=0.7; // (intrinsic stand-off ratio)
I_P=50; // in uA (peak point curent)
Vv=2; // in V (valley point voltage)
I_V=6; // in mA (valley point current)
V_BB=20; // in V (maximum interbase voltage)
R_BB=7; // in k-ohm (interbase resistance)
I_E0=2; // in mA (emitter leakage current)
Vg_min=0.2 // in V (minimum gate voltage required to trigger SCR)
C=0.1; // in uF (assumption as done in the book)
// calculate
I_P=I_P*1E-6; // changing unit from uA to A
Rmax=V_BB*(1-neta)/I_P; // calculation of Rmax
I_V=I_V*1E-3; // changing unit from mA to A
Rmin=(V_BB-Vv)/I_V; // calculation of Rmin
R2=1E4/(neta*V_BB);
I_E0=I_E0*1E-3; // changing unit from mA to A
R1=Vg_min/I_E0;
C=C*1E-6; // changing unit from uF to F
Tmax=Rmax*C*log(1/(1-neta)); // calculation of maximum time period
Tmin=Rmin*C*log(1/(1-neta)); // calculation of minimum time period
fmin=1/Tmax; // calculation of minimum frequency
fmax=1/Tmin; // calculation of maximum frequency
Rmax=Rmax*1E-3; // changing unit from ohm to k-ohm
Rmin=Rmin*1E-3; // changing unit from ohm to k-ohm
Tmax=Tmax*1E3; // changing unit from s to ms
Tmin=Tmin*1E3; // changing unit from s to ms
fmax=fmax*1E-3; // changing unit from Hz to kHz
printf("\nThe maximum value of R is \t\t Rmax=%.f k-ohm",Rmax);
printf("\nThe minimum value of R is \t\t Rmin=%.f k-ohm",Rmin);
printf("\nThe value of R2 is \t\t\t R2=%.2f ohm",R2);
printf("\nThe value of R1 is \t\t\t R1=%.f ohm",R1);
printf("\nThe maximum value of time period is \t Tmax=%.2f ms",Tmax);
printf("\nThe minimum value of time period is \t Tmin=%.2f ms",Tmin);
printf("\nThe minimum value of frequency is \t fmin=%.2f Hz",fmin);
printf("\nThe minimum value of frequency is \t fmax=%.2f kHz",fmax);
// Note : the answee of Tmax, fmin, fmax varies slightly due to exact calculation
