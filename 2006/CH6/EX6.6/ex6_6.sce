clc;
Psat=200;//Pressure of water in kPa
Tsat=393.38; // Saturation temperaure at Psat in kelvin
// (i).From the equation Tds=du+pdv 
// Following are from steam table at Psat
ufg=2025; // specific internal energy of vapourization in kJ/kg
vg=0.8857; // specific volume in m^3/kg
vf=0.001061; // specific volume in m^3/kg
sfg=(ufg/Tsat)+(Psat*(vg-vf)/Tsat); // specific entropy of vapourization
disp ("kJ/kg K",sfg,"specific entropy of vapourization = ","(i).From the equation Tds=du+pdv ");
// (ii).From the equation Tds=dh-vdp
hfg=2201.9; // Specific enthalpy of vapourization in kJ/kg
sfg=hfg/Tsat; // specific entropy of vapourization
disp ("kJ/kg K",sfg,"specific entropy of vapourization = ","(ii).From the equation Tds=dh-vdp ");
