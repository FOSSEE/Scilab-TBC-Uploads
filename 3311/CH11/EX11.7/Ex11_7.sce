// chapter 11
// example 11.7
// Determine required ratings of triacs and thyrstors
// page-742
clear;
clc;
// given
Es=415; // in V
P0=15; // in kW
// calculate
P0=P0*1E3; // changing unit from kW to W
E_line=Es*sqrt(3); // calculation of line voltage
I_line_rms=P0/E_line; // calculation of rms line current for traics
V_offstate=Es*sqrt(2); // calculation of peak offstate voltage for traics
I_rms=I_line_rms/sqrt(2); // calculation of required rms current rating for thyristor
printf("\n For Traics");
printf("\n\t\tThe rms line current is \t I_line_rms=%.1f A",I_line_rms);
printf("\n\t\tThe peak offstate voltage is \t V_offstate=%.f V",V_offstate);
printf("\n\n For thyristors");
printf("\n\t\tThe required rms current rating is \t\t I_rms=%.1f A",I_rms);
printf("\n\t\tThe voltage requirement will be same as that of triacs  %.f V",V_offstate);
