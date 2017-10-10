//ques-15.9
//Calculating equilibrium constant for a reaction
clc
P=10;//pressure (in atm)
x=0.96;//degree of dissociation
Kp=(27*P^2*x^4)/(16*((1-x)^2)*(1+x)^2);//equilibrium constant
printf("Equilibrium constant  required is %.2f atm^2.",Kp);
