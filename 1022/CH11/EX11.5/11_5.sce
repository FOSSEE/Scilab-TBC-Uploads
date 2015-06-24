clc
//initialisation of variables
l= 0.2 //m
l1= 0.5 //m
k= 0.35 //W/m C
t= 0.15 //m
T1= 1100 //C
T2= 150 //C
//CALCULATIONS
Ai= 6*l^2
Ao= 6*l1^2
q= 0.73*k*sqrt(Ai*Ao)*(T1-T2)/t
//RESULTS
printf ('Power consumption= %.f W',q)
