clc
//initialisation of variables
m= 1 //lb
cp= 0.240 //btu/lb F
T2= 150 //F
T1= 50 //F
//CALCULATIONS
S= m*cp*(log(460+T2)-log(460+T1))
//RESULTS
printf ('Entropy change = %.4f Btu/Fabs',S)
