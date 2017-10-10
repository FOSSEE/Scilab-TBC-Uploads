// Implementation of example 7.8
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

Pa = 130; //kPa
Pb = 100; //kPa
Ta = 50; //degree C
Ta = Ta + 273; //K
Tb = 13; //degree C
Tb = Tb + 273; //K
Cp = 1.005; //kJ/kg K
dS_sys = Cp * log(Tb/Ta) - 0.287 * log(Pb/Pa);
dS_surr = 0;
dS_univ = dS_sys + dS_surr;
printf("dS_univ = %f kJ/kg K\n\n",dS_univ);

if dS_univ<0 then
  printf("Flow must be from B to A since entropy cannot be negative\n");
elseif dS_univ>0 then
  printf("Flow must be from A to B as entropy change is positive\n");
else 
    printf("Flow will not occur\n");
end