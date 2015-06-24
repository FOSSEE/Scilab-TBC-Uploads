// chapter 9
// example 9.17
// Determine dc voltage, rms line and phase voltages and Device voltage ratings
// page-591
clear;
clc;
// given
E1_line=415; // fundamental line voltage
// calculate
// since E1_line=(sqrt(2)/%pi)*Edc*1.5, therefore we get
Edc=E1_line*(%pi/(sqrt(2)*1.5)); // calculation of dc voltage
E_rms_line=Edc/sqrt(2); // calculation of rms line voltage
E_rms_phase=E_rms_line/sqrt(3); // calculation of rms phase voltage
V_CEO=1.5*Edc; // calculation of Device voltage ratings
printf("\nThe dc voltage is \t\t Edc=%.f V", Edc);
printf("\nThe rms line voltage is \t E_rms_line=%.2f V",E_rms_line);
printf("\nThe rms phase voltage is \t E_rms_phase=%.2f V",E_rms_phase);
printf("\nThe Device voltage ratings is \t V_CEO=%.1f V",V_CEO);
// Note: The answer varies slightly due to precise calculations