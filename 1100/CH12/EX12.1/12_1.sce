clc
//initialisation of variables
P= 15.0 //psia
T= 55 //F
P1= 0.2141 //psia
ma= 29 //lb
mb= 18 //lb
P2= 0.2141 //psia
P3= 0.3631 //psia
//CALCULATIONS
dp= P-P1
r= (dp*ma)/(P1*mb)
r1= r/(r+1)
r2= 1/(r+1)
r4= r2/r1
P= P2/P3
//RESULTS
printf ('relative humidity= %.2f ',P)
printf (' \n specific humidity= %.4f lb vapour/lb air',r4)
