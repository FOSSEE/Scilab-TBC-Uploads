clc;
Tcammonia=405.9;
Tcwater=647.3;
Tr=0.576; // Condition of similarity
Twater=Tcwater*Tr; // At reduced temperature Temperature of water
Tammonia=Tcammonia*Tr;//At reduced temperature Temperature of  ammonia
// From steam table at Twater
hfgwater=2257;// specific enthalpy in kJ/kg 
hfgammonia=Tcammonia/Tcwater *hfgwater; // Latent heat of vaporization of ammonia
disp ("kJ/kg",hfgammonia,"Latent heat of vaporization of ammonia =");
