clc
//initialisation of variables
cv= 5 //cal mole^-1
P= 100 //atm
T= 1130 //K
T1= 812 //K
n= 3 //moles
R= 1.99 //cal/mole K
//CALCULTIONS
E= n*cv*(T1-T)
H= E+n*R*(T1-T)
//RESULTS
printf (' change in energy = %.f cal ',E)
printf (' \n change in enthalpy= %.f cal ',H-2)
