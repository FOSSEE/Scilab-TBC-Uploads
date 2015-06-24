clc
//initialisation of variables
T= -0.2 //C
T1= 25 //C
T2= 1.86 //C
R= 0.082 //li-atm per mole per degree
//CALCULATIONS
P= -T*R*(T1+273)/T2
//RESULTS
printf (' osmotic pressure= %.2f atm',P)
