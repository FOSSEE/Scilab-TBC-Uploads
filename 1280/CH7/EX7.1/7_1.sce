clc
//initialisation of variables
Q= 30 //gpm
dp= 300 //psi
S= .85
Cv= 5.41 //
//CALCULATIONS
Cv1= Q/(sqrt(dp/S))
dp1= S*Q^2/Cv^2
//RESULTS
printf ('flow coefficient = %.3f gpm',Cv1)
printf (' \n pressure drop = %.f psi',dp1)
