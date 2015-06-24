clc
//Initialization of variables
Hs=89 //kJ/mol
HI=418 //kJ/mol
HD=244 //kJ/mol
HE=-349 //kJ/mol
Hf=-437 //kJ/mol
//calculations
HL=Hs+HD/2 +HI+HE-Hf
//results
printf("Lattice energy = %d kJ/mol",HL)
