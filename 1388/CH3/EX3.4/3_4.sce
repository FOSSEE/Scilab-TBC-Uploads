clc
//initialisation of variables
i= 1 //amp
r= 2 //ohms
t= 10 //min
dT= 2.73 //C
x= 0.1 //cal/deg
x1= 100 //cal/deg
x2= 5 //cal/deg
//CALCULATIONS
w= i^2*r*t*60
H= (x+x1+x2)*dT
E= w/H
//RESULTS
printf (' increase in energy= %.2f cal ',E)
