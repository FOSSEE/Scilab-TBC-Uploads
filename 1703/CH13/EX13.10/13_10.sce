
clc
//initialisation of variables
P= 14.7 //lb/in^2
T= 15 //C
v= 350 //ft/sec
R= 0.714
//CALCULATIONS
P1= P*144
r= 3091*(273+T)
d1= P1/r
r1= r+(v^2/7)
P2= (r1*d1/(P1^R))^(1/(1-R))/144
dP= P2-P
T2= r1/3091
dT= T2-(273+T)
//RESULTS
printf ('rise in pressure = %.f lb/in^2 ',dP)
printf ('\n rise in temperature = %.1f C ',dT)
