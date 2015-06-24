// chapter 4
// example 4.3
// Calculate the number of thyristors and value of resistance and capacitance
// page-130-131
clear;
clc;
// given
Es=6; // in kV (string voltage)
Im=4; // in kA (string current)
E_D=1.2; // in kV (thyristor voltage)
I_T=1; // in kA (thyristor current)
neta=90; // in percentage (string efficiency)
I_B_max=15; // in mA (maximum blockin current)
dQ_max=25; // in uC (maximum permissible difference between reverse reovery charge)
// calculate
neta=neta/100; //changing efficiency from percentage to ratio
n_s_float=Es/(E_D*neta); // calculation of number of thyristos in series
n_s= int16(n_s_float)+1; // since n_s will be reduced by decimal value it contaisn if type conversion is done because the decimal part would be removed so we need to add 1 to it
n_p_float=Im/(I_T*neta); // calculation of number of thyristos in parallel
n_p= int16(n_p_float)+1; // since n_p will be reduced by decimal value it contaisn if type conversion is done because the decimal part would be removed so we need to add 1 to it
n_s=double(n_s); // converting again to double for various calculatios 
n_p=double(n_p); // converting again to double for various calculatios 
printf("\nThe number of thyristors in series is \t n_s=%.f",n_s);
printf("\nThe number of thyristors in parallel is  n_p=%.f",n_p);
E_D=(E_D*1E3); // changing unit from kV to V
Es=Es*1E3; // changing unit from kV to V
dI_b=(I_B_max); // (assumption as done in the book)
R=(n_s*E_D-Es)/((n_s-1)*dI_b); // calculation of resistance in k-ohm
C=(n_s-1)*dQ_max/(n_s*E_D-Es); // calculation of capacitance in uF
printf("\nThe value of resistance is \t\t R<=%.f k-ohm",R);
printf("\nThe value of capacitance is \t\t C>=%.3f uF",C);
