// chapter 9
// example 9.7
// Compute DC and switch voltage ratings
// page-570
clear;
clc;
// given
E0_rms=220; // in V (Fundamental output voltage)
M=0.8; // modulation index
// calculate
// since E0_rms=sqrt(1/2)*M*(Edc_2), therefore we get
Edc_2=E0_rms/(sqrt(1/2)*M); // calculation of DC voltage ratings
V_CEO=2*Edc_2; // calculation of switch voltage ratings
printf("\nThe DC voltage ratings is \t %.2f V",Edc_2);
printf("\nThe switch voltage ratings is \t %.f V",V_CEO);
// Note: The answer varies slightly due to precise calculation