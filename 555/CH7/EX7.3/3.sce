// Implementation of example 7.3
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

m = 1; //mass of ice in kg
Lf = 333.3; //latent heat of fusion of ice in kJ/kg
T2 = 0; //degree C
T2 = T2 + 273; //K
T1 = -5; //degree C
T1 = T1 + 273; //K 
Ta = 20; //degree C
Ta = Ta + 273; //K
Cp_ice = 2.093; //specific heat for ice in kJ/kg K 
Cp_water = 4.187; //specific heat for water in kJ/kg K

//(a)
Q = m*Cp_ice*(T2-T1) + m*Lf + m*Cp_water*(Ta-T2); //kJ
dS_atm = -Q/Ta; //kJ/K
//change in entropy of system when temperature changes from -5 to 0 degree C 
dS1_sys = m*Cp_ice*log(T2/T1); //kJ/K
//change in entropy of system when ice melts at 0 degree C
dS2_sys = m*Lf/T2;
//change in entropy of when temperature of water changes from 0 to 20 degree C
dS3_sys = m*Cp_water*log(Ta/T2); //kJ/K
dS_sys = dS1_sys + dS2_sys + dS3_sys;
dS_univ = dS_atm + dS_sys;
printf("Entropy increase of the universe = %f kJ/K\n\n",dS_univ);


//(b)
Wmin = dS_sys*Ta - Q;
printf("Minimum amount of work necessary to convert water back into ice, Wmin = %0.2f kJ",Wmin);
// end