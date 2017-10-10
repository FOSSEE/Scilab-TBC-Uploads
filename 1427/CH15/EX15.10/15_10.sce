//ques-15.10
//Calculating equilibrium constant for a reaction
clc
P=1000;//pressure (in atm)
//a/b=1/3 (Volume ratio)
a=1;//volume of N2
b=3;//volume of H2
c=0.2491;//mole fraction of ammonia
//c=(2*x)/(4-2*x)
x=0.9964/2.4982;//degree of dissociation
Kp=(16*x^2*(2-x)^2)/(27*P^2*(1-x)^4);//equilibrium constant
printf("Equilibrium constant required is %.9f atm^-2.",Kp);
