clc
//Initialization of variables
T=273.2+25 //K
n=1 //mol
R=1.987 //cal/deg mol
//calculations
Etr=1.5*n*R*T
Erot=1.5*n*R*T
Evib=0
Eel=0
Etot=Etr+Erot+Evib+Eel
//results
printf("Total energy = %d cal",Etot)
