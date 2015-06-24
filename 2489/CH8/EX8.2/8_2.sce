clc
//Intitalisation of variables
clear
m= 18 //gm
T= 100 //C
T1= 0 //C
hv= 9720 //cal
s= 0.36 //cal deg^-1 mole^-1
//CALCULATIONS
dS= m*log((273+T)/(273+T1))
dS1= 2*dS+(hv/(273+T))-s
//RESULTS
printf ('Increase in entropy = %.2f cal deg^-1 mole^-1',dS)
printf ('\n Total increase in entropy = %.2f cal deg^-1 mole^-1',dS1)
