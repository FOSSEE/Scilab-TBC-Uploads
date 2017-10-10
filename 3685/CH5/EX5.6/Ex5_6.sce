clc
ha = 260  // Enthalpy of air in kJ/kg
hg = 912  // Enthalpy of gas in kJ/kg
Va = 270  // Velocity of air in m/s
wf = 0.0190  // mass of fuel in Kg
wa = 1 // mass of air in Kg
Ef = 44500  // Chemical energy of fuel in kJ/kg
Q = 21  // Heat loss from the engine in kJ/kg

printf("\n Example 5.6")
Eg = 0.05*wf*Ef/(1+wf)  // As 5% of chemical energy is not released in reaction
wg = wa+wf // mass of flue gas
Vg = sqrt(2000*(((ha+(Va^2*0.001)/2+(wf*Ef)-Q)/(1+wf))-hg-Eg)) 

printf("\n Velocity of exhaust gas is %d m/s",Vg)
//Answer given in textbook is wrong

