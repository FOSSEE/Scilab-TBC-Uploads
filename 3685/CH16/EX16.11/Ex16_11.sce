clc
// Refer table 16.4 for values
T0 = 298 // Atmospheric temperature in K
Wrev = -23316-3*(-394374)-4*(-228583) // Reversible work in kJ/kg mol
Wrev_ = Wrev/44 // Reversible work in kJ/kg
Hr = -103847 // Enthalpy of reactants in kJ/kg
T = 980 // Through trial and error
Sr = 270.019+20*205.142+75.2*191.611 // Entropy of reactants
Sp = 3*268.194 + 4*231.849 + 15*242.855 + 75.2*227.485 // Entropy of products
IE = Sp-Sr // Increase in entropy
I = T0*3699.67/44 // Irreversibility
Si = Wrev_ - I// Availability of products of combustion 

printf("\n Example 16.11 \n")
printf("\n Reversible work is %f kJ/kg",Wrev_)
printf("\n Increase in entropy during combustion is %f kJ/kg mol K",Sp-Sr)
printf("\n Irreversibility of the process %f kJ/kg",I)
printf("\n Availability of products of combustion is %f kJ/kg",Si)
//The answers vary due to round off error
