clc;
// (a).The product CO2 is also at 298K
Pco=2/3; // Paratial pressure of CO in atm 
Po2=1/3; // Paratial pressure of O2 in atm
Pco2=1; // Paratial pressure of CO2 in atm
T0=298; // Temperature of surroundings in kelvin
R_1=8.3143; // Universal gas constant of air in kJ/kmol K
// From table 14.1 at 298 K and 1 atm
s_co2=213.795-R_1*log (Pco2); // entropies in kJ/kmol K
s_co=197.653-R_1*log (Pco); // entropies in kJ/kmol K
s_o2=205.03-R_1*log (Po2); // entropies in kJ/kmol K
del_Scv=s_co2-s_co-1/2*s_o2; // Entropy change of comtrol volume 
// From table 14.1
del_hfco2=-393509; del_hfco=-110525; // Enthalpy of Heat in kJ/kmol
Q= del_hfco2- del_hfco; // Heat transfer (to surroundings)
del_Ssurr=abs(Q)/T0; // Entropy change of surroundings
del_Sgen=del_Scv+del_Ssurr; //Entropy change of universe
disp ("kJ/K",del_Sgen,"Entropy change of universe = ","kJ/K",del_Ssurr,"Entropy change of surroundings = ","kJ/K",del_Scv,"Entropy change of comtrol volume  = ","(a).The product CO2 is also at 298K");
// (b).The reaction is adiabatic
// Let the adiabatic flame temperature be T. Then since
Q=0;
C_p=44*0.8414;
// From table A.16
T=5057.5; //adiabatic flame temperature in kelvin
s_CO2=213.795+C_p*log (T/T0); // entropies in kJ/kmol K
del_Scv=s_CO2-s_co-1/2*s_o2; // Entropy change of comtrol volume 
del_Ssurr=abs(Q)/T0; // Entropy change of surroundings
del_Sgen=del_Scv+del_Ssurr; //Entropy change of universe
disp ("kJ/K",del_Sgen,"Entropy change of universe = ","kJ/K",del_Ssurr,"Entropy change of surroundings = ","kJ/K",del_Scv,"Entropy change of comtrol volume  = ","(b).The reaction is adiabatic");
