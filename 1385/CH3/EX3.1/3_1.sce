clc
//initialisation of variables
p= 388.6 //mm
p1=26.5 //mm
T= 60 //C
R= 1.99 //cal mole^-1 A^-1
//CALCULATIONS
Lv= log10(p/p1)*2.303*R*273*(273+T)/(T)
//RESULTS
printf (' heat of vapourisation of benzene= %.f cal per mole',Lv+2)
