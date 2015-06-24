// chapter 12
// example 12.7
// Design a ZVS three-level PWM convertor
// page-791-792
clear;
clc;
// given
Edc=300; // in V
E0=60; // in V (output voltage)
I0=10; // in A
fs=120; // in KHz
Deff=0.5; // effective duty ratio
del_D=25; // assumption for reduction in duty ratio in percentage of duty ratio as done in the book
TLI=3.46; // in uH (assuming transformer leakage inductance as done in the book)
C=500; // in pF (assuming intrinsic capacitance of MOSFET as done in the book)
// calculate
fs=fs*1E3; // changing unit from KHz to Hz
TLI=TLI*1E-6; // changing unit from uH to H
C=C*1E-12; // changing unit from pF to F
// since Deff=2*n*E0/Edc,  therefore we get,
n=Deff*Edc/(2*E0); // calculation of transformer turns ratio
// since Deff=D-del_D*D, therefore we get,
D=Deff/(1-del_D/100); // calculation of duty ratio
Lr=((del_D*D/100)*Edc/2)/(4*(I0/n)*fs); // calculation of resonant inductance
Lr_eff=Lr+TLI; // calculation of effecive inductance
I0_min=(n*Edc/2)*sqrt(1.5*C/Lr_eff); // calculation of minimum load current
I_Lr=I0/n; // calculation of inductor current
X_Lr=2*%pi*fs*Lr_eff; // calculation of inductive reactance
V_Lr=I_Lr*X_Lr; // calculation of voltage drop across Lr
// since E0=Deff*Es, therefore we get
Es=E0/Deff; // calculation of secondary voltage
Ep=n*Es; // calculation of primary voltage
VA=Ep*I_Lr; // calculation of transformer volt-ampere
printf("\nThe duty ratio is \t\t D=%.2f",D);
printf("\nThe resonant inductance is \t Lr=%.2f uH",Lr*1E6);
printf("\nThe effective inductance is \t Lr_eff=%.f uH",Lr_eff*1E6);
printf("\nThe minimum load current is \t I0_min=%.2f A",I0_min);
printf("\nThe inductor current is \t I_Lr=%.f A",I_Lr);
printf("\nThe voltage drop across Lr is \t V_Lr=%.2f V",V_Lr);
printf("\nThe secondary voltage is \t Es=%.f V",Es);
printf("\nThe primary voltage is \t\t Ep=%.f V",Ep);
printf("\nThe transformer volt-ampere is \t VA=%.f VA",VA);
// Note :The answer vary slightly due to precise calculation
