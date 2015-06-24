ha = 260; // Enthalpy of air
hg = 912; // Enthalpy of gas
Va = 270; // Velocity of air
f = 0.0190; // Fuel to air ratio wf/wa
Ef = 44500; // Chemical energy of fuel in kJ/kg
Q = 21; // Heat loss from the engine
Eg = 0.05*f*Ef/(1+f); // As 5% of chemical energy is not released in reaction
Vg = sqrt(2000*(((ha+(Va^2*0.001)/2+(f*Ef)-Q)/(1+f))-hg-Eg));
disp("m/s",Vg,"Velocity of exhaust gas is")