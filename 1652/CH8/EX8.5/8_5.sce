clc
//Initialization of variables
R=1.987 //cal/deg mol
//calculations
Cvtr=1.5*R
Cvrot=1.5*R
Cvt=Cvtr+Cvrot
disp("Observed Cv= 6.43")
Cvobs=6.43
Cvvib=Cvobs-Cvt
//results
printf("Vibrational = %.2f cal/deg mol",Cvvib)
