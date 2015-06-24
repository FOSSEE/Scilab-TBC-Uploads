//Problem 41.05: Determine the characteristic impedance of each of the attenuator sections shown in Figure 41.9.

//initializing the variables:
R1a = 8; // in ohm
R2a = 21; // in ohm
R1b = 10; // in ohm
R2b = 15; // in ohm
R1c = 200; // in ohm
R2c = 56.25; // in ohm

//calculation:
//for a T-section attenuator the characteristic impedance
Roa = (R1a^2 + 2*R1a*R2a)^0.5
Rob = (R1b^2 + 2*R1b*R2b)^0.5
Roc = (R1c^2 + 2*R1c*R2c)^0.5

printf("\n\n Result \n\n")
printf("\nfor a T-sections attenuator the characteristic impedances are (a) %.0f ohm, (b) %.0f ohm and (c)%.0f ohm",Roa,Rob,Roc)