// chapter 4
// example 4.4
// Calculate the number of thyristors
// page-132
clear;
clc;
// given
Es=7.5; // in kV (total applied voltage)
Im=1000; // in A (total forward current)
E_D=500; // in V (thyristor voltage)
I_T=75; // in A (thyristor current)
neta=14; // in percentage (derating factor)
// calculate
Es=Es*1E3; // changing unit from kV to V
neta=neta/100; //changing efficiency from percentage to ratio
// since neta=1-(Es/(n_s*E_D)) therefore 
n_s_float=Es/(E_D*(1-neta)); // calculation of number of thyristos in series
n_s= int16(n_s_float)+1; // since n_s will be reduced by decimal value it contaisn if type conversion is done because the decimal part would be removed so we need to add 1 to it
// since neta=1-(Im/(n_s*I_T)) therefore 
n_p_float=Im/(I_T*(1-neta)); // calculation of number of thyristos in parallel
n_p= int16(n_p_float)+1; // since n_p will be reduced by decimal value it contaisn if type conversion is done because the decimal part would be removed so we need to add 1 to it
printf("\nThe number of thyristors in series is \t n_s=%.f",n_s);
printf("\nThe number of thyristors in parallel is  n_p=%.f",n_p);