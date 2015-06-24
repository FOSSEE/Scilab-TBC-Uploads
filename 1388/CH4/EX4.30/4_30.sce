clc
//initialisation of variables
R= 1.987 //cal/mole K
T1= 25 //C
T2= 76.8 //C
P2= 760 //mm
P1= 115 //mm
//CALCULATIONS
H= 2.303*R*(273.2+T1)*(273.2+T2)*log10(P2/P1)/(T2-T1)
//RESULTS
printf (' molar heat of vapourisation= %.3f cal mole^-1',H)
