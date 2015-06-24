clc
//initialisation of variables
S= 45.77 //cal deg^-1
T= 25 //C
T1= 100 //C
R= 1.9872 //cal /mole K
//CALCULATIONS
S0= S+ 3.5*R*log((T1+273)/(T+273))
//RESULTS
printf (' absolute entropy= %.2f cal deg^-1',S0)
