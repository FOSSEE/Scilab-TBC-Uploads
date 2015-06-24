clc
//initialisation of variables
d= 3.880 //g l^-1
M= 208.3 //gm
P= 1 //atm
R= 0.08205 //cal/mol K
T= 473.1 //K
//CALCULATIONS
d1= M*P/(R*T)
d2= (d1-d)/d
Kp= d2^2/(1-d2^2)
Kc= Kp/(R*T)
//RESULTS
printf (' Kc = %.3e moles l^-1',Kc)
