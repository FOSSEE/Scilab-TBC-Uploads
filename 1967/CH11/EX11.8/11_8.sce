clc
//initialisation of variables
clear
p= 23.76 //mm
R= 0.082 //atm-lit deg^-1 mol^-1
T= 25 //C
vl= 18 //ml
p1= 1 //atm
//CALCULATIONS
dP= 0.001*vl*p*p1/(R*(273+T))
p2= p+dP
//RESULTS
printf ('vapour pressure = %.2f mm',p2)

//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
