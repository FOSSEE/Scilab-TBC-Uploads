//ques-15.6
//Calculating pressure
clc
Kp=1.06*10^-2;//equilibrium constant (in atm)
x=1/100;//degree of dissociation
P=(Kp*(1-x^2))/(4*x^2);//pressure
printf("Pressure required is %.2f atm.",P);
