clc;
T0=298; // Given temperature in kelvin
R_1=8.314; // Universal gas constant in kJ/kg mol K
// (a).CO+1/2 O2 = CO2
// From table of properties of combustion
del_hfco2=-393509;// Enthalpy of heat 
del_hfco=-110525;// Enthalpy of heat 
s_co2=213.795;// Entropy of heat 
s_co=197.652;// Entropy of heat 
s_o2=205.142;// Entropy of heat 
del_Ga=(del_hfco2-del_hfco-T0*(s_co2-s_co-(1/2*s_o2)));
Ka=exp (abs (del_Ga)/(R_1*1000*T0));
disp ("(a).CO+1/2 O2 = CO2");
printf ("\n The equilibrium constant at 298 K = %0.3f (Error in textbook) \n",Ka);
// (b).2CO + O2 = 2CO2
Kb=exp (2*abs (del_Ga)/(R_1*1000*T0));
disp ("(b).2CO + O2 = 2CO2");
printf ("\nThe equilibrium constant at 298 K = %0.3f (Error in textbook)",Kb);

