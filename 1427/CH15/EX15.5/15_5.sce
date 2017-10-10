//ques-15.5
//Calculating equilibrium constant
clc
P=1;//pressure (in atm)
x=25;//percentage of dissociation
x=x/100;
Kp=((x^2)*P)/(1-x^2);//equilibrium constant
printf("Equilibrium constant required is %.4f atm.",Kp);
