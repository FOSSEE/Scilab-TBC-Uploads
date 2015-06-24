clc
//initialisation of variables
Dp= 1 //in
Dr= 10 //in
R= 12 
W= 15 //tons
//CALCULATIONS
Ar= %pi*Dr^2/4
Ap= %pi*Dp^2/4
P= W*2240/((Ar/Ap)*R)
//RESULTS
printf ('power applied to lever = %.f lbs',P)
