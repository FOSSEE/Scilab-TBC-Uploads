//ques-15.8
//Calculating equilibrium constant for a reaction
clc
P=1;//pressure (in atm)
x=20/100;//degree of dissociation
Kp=(4*P*x^2)/(1-x^2);//equilibrium constant
printf("Equilibrium constant required is %.4f atm.",Kp);
