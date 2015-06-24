// Refer table 16.4 for values
T0 = 298;
Wrev = -23316-3*(-394374)-4*(-228583);
Wrev_ = Wrev/44; // in kJ/kg
Hr = -103847;
T = 980; // Through trial and error
Sr = 270.019+20*205.142+75.2*191.611;
Sp = 3*268.194 + 4*231.849 + 15*242.855 + 75.2*227.485;
IE = Sp-Sr; // Increase in entropy
I = T0*3699.67/44;
Si = Wrev_ - I;
disp("kJ/kg",Wrev_,"Reversible work is")
disp("kj/kg mol K",Sp-Sr,"Increase in entropy during combustion is")
disp("kJ/kg",I,"Irreversibility of the process")
disp("kJ/kg",Si,"Availability of products of combustion is")
