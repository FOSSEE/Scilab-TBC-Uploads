clc
//Intitalisation of variables
clear
m= 1.247 //gm
hc= 2745 //cal deg^-1
mw= 122.12 //gm
dT= 2.87 //C
//CALCULATIONS
mh= dT*hc*mw/(m*1000)
//RESULTS
printf ('molar heat of combustion of benzoic acid = %.1f kcal mole^-1',mh)
 
