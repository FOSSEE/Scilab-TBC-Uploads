clc 
//initialisation of variables
dH= -10200 ///cal
R= 1.987 //cal deg^-1 mole^-1
T1= 690 //K
T2= 800 //K
KT1= 10
//CALCULATIONS
KT2= KT1*10^(dH*(T2-T1)/(2.303*R*T1*T2))
//RESULTS
printf ('K800= %.2f  ',KT2)
