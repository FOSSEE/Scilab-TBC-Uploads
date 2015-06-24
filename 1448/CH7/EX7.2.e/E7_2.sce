clc
//Initialization of variables
Hr=-285.83 //kJ/mol
Sr=-163.34 //J/ K mol
T=298.15 //K
//calculations
Gr=Hr-T*Sr/1000.
//results
printf('Gibbs energy = %.2f kJ/mol',Gr)
