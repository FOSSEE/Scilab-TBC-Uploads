clc 
//initialisation of variables
E= -1148.93 //kcal mole^-1
R= 1.987 //cal mole^-1 K^-1
T= 25 //C
n=4
//CALCULATIONS
E1= (E*1000-R*n*(273.1+T))/1000
//RESULTS
printf ('heat absorbed= %.2f kcal mole^-1',E1)
