clc
//initialisation of variables
T= 25 //C
T1= 100 //C
R= 1.9872 //cal /mole K
p= 1 //atm
p1= 10 //atm
//CALCULATIONS
S= 3.5*R*log((T1+273)/(T+273))
S1= S+R*log(p/p1)
//RESULTS
printf (' increase in entropy= %.2f cal deg^-1',S)
printf (' \n increase in entropy= %.2f cal deg^-1',S1)
