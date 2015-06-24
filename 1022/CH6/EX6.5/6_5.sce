clc
//initialisation of variables
M= 50. //gm
T= 98. //C
Mw= 75. //gm
T1= 19. //C
Tm= 27. //C
Mc= 123. //gm
SH= 0.1 //cal gm^-1 C^-1
Qinst= 6.5 //cal
//CALCULATIONS
c= (Mc*SH+Mw+Qinst)/(M*(T-Tm))
//RESULTS
printf ('Mean specific heat of the metal sample= %.4f cal/C gm',c)
//The answer given in textbook is Wrong
