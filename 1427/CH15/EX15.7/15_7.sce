//ques-15.7
//Calculating degree of dissociation
clc
Kp=3*10^-2;//equilibrium constant (in atm)
P=1;//pressure (in atm)
//Kp=(P*x^2)/(1-x^2)
//Solving, x^2 + Kp*x - Kp = 0
x=(-Kp+sqrt(Kp^2+4*Kp))/2;//degree of dissociation
printf("Degree of dissociation required is %.4f.",x);
