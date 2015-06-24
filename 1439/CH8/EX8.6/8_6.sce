clc 
//initialisation of variables
M= 18.02 //g mole^-1
d= 0.99564 //g/cc
R= 0.08205 //l-atm deg^-1 mole^-1
T= 30 //C
P1= 31.824 //mm
P10= 31.207 //mm
//CALCULATIONS
p= R*(273.15+T)*2.303*1000*d*log10(P1/P10)/M
//RESULTS
printf ('osmotic pressure of sucrose solution= %.1f atm',p)
