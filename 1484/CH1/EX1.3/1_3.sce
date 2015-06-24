clc
//initialisation of variables
Dj= 1 //in
Dr= 2 //in
W= 40 //lbs
W1= 1 //ton
rl= 20
//CALCULATIONS
Ap= %pi*Dj^2/4
Ar= %pi*Dr^2/4
Vrj= rl*Ar/Ap
e= W1*2240*100/(W*Vrj)
//RESULTS
printf ('efficiency of machine at this load = %.f percent',e)
