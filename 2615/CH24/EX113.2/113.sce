clc
//initialisation of variables
p=1000//kg
l=400//mm
a=150//mm
w=14*20^2//cm^2
//CALCULATIONS
R=p*(l-a)/l//kg
Lam=6*R*a/w//kg/cm^2
//RESULTS
printf('The maximum stress at the critical section=% f kg/cm^2',Lam)
