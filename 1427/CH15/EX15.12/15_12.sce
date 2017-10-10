//ques-15.12
//Calculating both equilibrium constants
clc
P=1;//pressure (in atm)
x=80/100;//degree of dissociation
T=523;//temperture (in K)
R=0.0831;//L-atm/K/mole
Kp=(P*x^2)/(1-x^2);
Kc=Kp/(R*T);
printf("The value of Kp and Kc are %.4f atm and %.4f mole/L respectively.",Kp,Kc);
