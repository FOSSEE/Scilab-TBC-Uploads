clc
//initialisation of variables
T= 300 //K
T1= 400 //K
k= 6.0954
k1= 3.2533*10^-3
k2= -1.0171*10^-6
R= 1.98719 //cal/mol K
//CALCULATIONS
S= 2*(k*log(T1/T)+k1*(T1-T)+k2*(T1^2-T^2)/2)
S1= S-2*R*log(T1/T)
//RESULTS
printf (' Entropy= %.4f cal  deg^-1',S)
printf (' \n Entropy = %.4f cal  deg^-1',S1)
