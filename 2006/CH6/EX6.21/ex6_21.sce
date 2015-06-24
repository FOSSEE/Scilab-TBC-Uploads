clc;
// (a).Restoring to initial state by throttling process
T1=303; //Temperature of air at state 1 in kelvin
p1=1;  //Pressure of air at state 1 in bar
p2=5; //Pressure of air at state 2 in bar
p3=1;//Pressure of air at state 3 in bar
T3=303; //Temperature of air at state 3 in kelvin
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
k=1.4; // Index of reversible adiabatic compression
T2=T1*(p2/p1)^((k-1)/k); // Temperature after reversible adiabatic compression
w12=Cpo*(T2-T1); // Work of reversible adiabatic compression
s21=0; // Entropy change of air
s32=-R*log (p3/p2); // Entropy change 
s31=s32; // Net entropy change of air
d_Ssurr=0; // Entropy change of surroundings because There is no heat transfer
d_Suniv=s31+d_Ssurr; // Net Entropy change of universe
disp ("kJ/kg K",d_Suniv,"Net Entropy change of universe = ","kJ/kg",w12,"Work of reversible adiabatic compression = ","(a).Restoring to initial state by throttling process");
// (b).Restoring to initial state by by completing cycle
T0=298; // Temperature of surroundings in kelvin
d_Ssystem=0; // Entropy change of systrem is zero because it is cyclic process
q31=Cpo*(T2-T3); // Heat rejected to the surroundings
d_Ssurr=q31/T0; //  Entropy change of surroundings
d_Suniv=d_Ssystem+d_Ssurr; // Increase in entropy of the universe
disp ("kJ/kg K",d_Suniv,"Net Entropy change of universe = ","(b).Restoring to initial state by by completing cycle");
