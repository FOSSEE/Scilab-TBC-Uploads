// chapter 16
// example 16.10
// fig. 16.20
// Determine rms current and peak reverse voltage
// page-1028-1029
clear;
clc;
// given
P0=500; // in MW
E=250; // in kV
// calculate
P0=P0*1E6; // changing unit from MW to W
E=E*1E3; // changing unit from kV to V
Id=P0/(2*E); // calculation of direct current
Irms=Id/sqrt(3); // calculation of rms current
E_line_max=E/2; // calculation of maximum line voltage for 6 pulse group
PIV=E_line_max*(%pi/3); // calculation of peak reverse voltage
printf("\nThe rms current is \t\t Irms=%.2f A",Irms);
printf("\nThe peak reverse voltage is \t PIV=%.f kV",PIV*1E-3);
