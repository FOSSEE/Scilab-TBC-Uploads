//Initilization of variables
mu=0.2 //coefficient of friction
F1=150 //lb
F2=100 //lb
theta=60 //degrees
//Calculations
N1=F1*cosd(theta) //lb
T=(mu*N1+(F1*cosd(theta/2))) //lb considering positive
//Equilibrium for 100lb
//Eliminating N2 from both equations
//Taking derivative we get
theta2=atand(mu) //degrees
//Hence P becomes
P=(F2*mu+T)/(cosd(theta2)+(mu*sind(theta2))) //lb
//Result
clc
printf('The minimum value of P is %flb',P)
