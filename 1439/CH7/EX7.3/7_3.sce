clc 
//initialisation of variables
Vp= 1022 //mm
Vp1= 406 //mm
//CALCULATIONS
Xb= (760-Vp1)/(Vp-Vp1)
Xb1= Vp*Xb/760
//RESULTS
printf ('mole fraction of benzene= % 3f ',Xb)
printf ('\n mole fraction of benzene vapour= % 3f ',Xb1)
