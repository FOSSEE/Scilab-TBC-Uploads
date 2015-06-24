clc
//initialisation of variables
T1= 70 //C
T2= 10 //C
Cp= 18 //cal mole^-1 deg^-1
P= 1 //atm
m= 18 //g
d= 0.9778 //g/ml
d1= 0.9997 //g/ml
e= 1.987 //cal
x= 82.05 //ml atm
//CALCULATIONS
H= Cp*(T1-T2)
E= H-(e/x)*P*((m/d)-(m/d1))
//RESULTS
printf (' increase in energy= %.f cal ',E)
