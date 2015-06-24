// Calculations
// Tension in the wire before it is cut
T_ab=1/((2.747*0.643)+(0.766)) // From eqn's 1 & 2..Here T_ab is multiplied with W (i.e weight of small ball) 
T_AB=cosd(40) // Tension in the wire after the wire is cut. Again T_AB is multiplied with W.
// Results
clc
printf('The tension in the wire before and after it is cut is respectively %f W & %f W \n',T_ab,T_AB)
