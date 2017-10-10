//ques-22.16
//Calculating lattice energy of KCl crystal
clc
S=90.9; IE=418.7; EA=-348.7; D=240; H=-440.3;//(in kJ/mol)
Uo=H-S-IE-D/2-EA;
printf("The lattice energy of KCl crystal is %.1f kJ/mol.",Uo);
