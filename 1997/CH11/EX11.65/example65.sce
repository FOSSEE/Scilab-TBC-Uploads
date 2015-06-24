//Chapter-11 example 63
//==========================================================================
clc;
clear;
//Given data
G       = 50;           // antenna gain in dB
f       = 6*10^9;       // operating frequency 
Te      = 1000;          // Noise temp in kelvin
SNR     = 20;           // min SNR in dB
L       = 10;           // Losses in dB
F       = 3;            // Noise Figure in dB
RCS     = -10;          // Radar cross section in dB
K       = 1.38*10^-23;  // boltzman constant
Vo      = 3*10^8;       //vel of Em wave in m/s;
DC      = 0.3;          // Duty cycle
R       = 300*10^3;     // Range in kms
Pav     = 1000;         // Average power in watts
SV      = 20;           //search volume
Ts      = 3;            //Scan time

//calculations

Pav1    = 10*log10(Pav)           //conversion to dB
KT       = 10*log10(Te*K)             //conversion to dB
R4      = 10*log10(R^4)           //conversion to dB
Ts1     = 10*log10(Ts)             //conversion to dB
//SNR   = (Pav*A*RCS*Ts)/(16*R^4*K*Te*L*F*SV)
A       = (SNR-Pav1-Ts-RCS+16+R4+KT+L+F+SV);//aperture
Pt      = Pav/DC;                   // peak ower in watts
//A1      =10^(A/10);                 // antilog calculation

//output
mprintf('A = %3.2f dB\n Peak power Pt = %3.2f KW\n',A,Pt/1000);
//mprintf('A = %3.2f m^2\n',A1)
mprintf(' Note: calculation error in textbook at KT')
//=============================================================================
