// chapter 9
// example 9.12
// Determine rms value of the output line and phase voltages, rms value of the fundamental component of the line and phase voltage
// page-582
clear;
clc;
// given
Edc=500; // in V (source voltage)
// calculate
E_line_rms=sqrt(2/3)*Edc; // calculation of rms value of the output line voltage
E_phase_rms=E_line_rms/sqrt(3); // calculation of rms value of the phase voltage
E_line_fund=4*Edc*cosd(30)/(sqrt(2)*%pi); // calculation of rms value of the fundamental component of the line voltage
E_phase_fund=E_line_fund/sqrt(3); // calculation of rms value of the fundamental component of the phase voltage
printf("\nThe rms value of the output line voltage is \t\t\t\t E_line_rms=%.f V",E_line_rms);
printf("\nThe rms value of the phase voltage is \t\t\t\t\t E_phase_rms=%.2f V",E_phase_rms);
printf("\nThe rms value of the fundamental component of the line voltage is \t E_line_fund=%.f V",E_line_fund);
printf("\nThe rms value of the fundamental component of the line voltage is \t E_phase_fund=%.2f V",E_phase_fund);
// Note: The answer varies slightly due to precise calculations and the answer in the book is rounded off