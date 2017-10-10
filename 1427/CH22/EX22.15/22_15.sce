//ques-22.15
//Calculating electron affinity of iodine
clc
S=25.9;//entropy (in kcal/mol)
H=-68.8;//enthalpy change (in kcal/mol)
D=25.5; IE=118.4; Uo=-165.4;//(in kcal/mol)
EA=H-S-D-IE-Uo;
printf("The electron affinity of iodine is %.1f kcal/mol.",EA);
