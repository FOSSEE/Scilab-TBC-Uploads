clc
clear

//INPUT
t=33.18;//critical temperature in K
pc=12.80*76*981*13.6;//critical pressure in dynes/sq.cm
r=83.15;//universal gas constant in kj/kg.K
d=0.08987;//density of hydrogen in gm/lit
v=2000/0.08987;//gram molecular volune of hydrogen in cc

//CALCULATIONS
b=r*10^6*t/(8*pc);//vanderwaal constant in cm^3/mol
to=2*27*t*(1-(b/v))/8;//inversion temperature of the hydrogen in K

//OUTPUT
mprintf('the inversion temperature of hydrogen is %3.2f K',to)
