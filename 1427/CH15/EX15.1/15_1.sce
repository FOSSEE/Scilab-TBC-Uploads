//ques-15.1
//Calculating equilibrium constant for a reaction
clc
a=15;//moles of H2
b=5.2;//moles of I2
c=10;//moles of HI
x=c/2;
Kc=(4*x^2)/((a-x)*(b-x));//equilibrium constant
printf("Equilibrium constant required is %.0f.",Kc);
