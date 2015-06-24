clc
//Intitalisation of variables
clear
v1= 125 //ml
p1= 0.6 //atm
v2= 150 //ml
p2= 0.8 //atm
V= 500 //ml
//CALCULATIONS
pa= p1*v1/V
pb= p2*v2/V
pt= pa+pb
//RESULTS
printf ('Partial pressure of A = %.2f atm',pa)
printf ('\n Partial pressure of B = %.2f atm',pb)
printf ('\n Total pressure of A = %.2f atm',pt)
