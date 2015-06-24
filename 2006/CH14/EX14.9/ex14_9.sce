clc;
// (a).Entropy change per kmol of C
// From table 14.1 at 298 K and 1 atm
s_c=5.686; // Absolute entropies of C in kJ/kmol K
s_o2=205.142; // Absolute entropies of o2 in kJ/kmol K
s_co2=213.795; // Absolute entropies of CO2 in kJ/kmol K
del_s=s_co2-(s_c+s_o2); // The entropy change 
disp ("kJ/K/kmol C",del_s,"(a).The entropy change = ");
// (b).Entropy change of universe
Tsurr=298; // Temperature of surroundings in kelvin
// From table 14.1 
del_Ho=-393509; // del_hfco2 in kJ/kmol CO2
Q=abs (del_Ho);
del_Ssurr=Q/Tsurr; // Entropy change of surroundings
del_Suniv=del_s+del_Ssurr; //Entropy change of universe
disp ("kJ/K",del_Suniv,"(b).Entropy change of universe = ");
