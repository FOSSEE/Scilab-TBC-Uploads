//ques-15.2
//Calculating equilibrium constant for a dissociation reaction
clc
x=22;//percentage of dissociation
a=2;//moles of HI
c1=(x/100)/2;//content of H2
c2=(x/100)/2;//content of I2
c3=(2-(2*x/100))/2;//content of HI
Kc=(c1*c2)/c3^2//equilibrium constant
printf("Equilibrium constant required is %.4f.",Kc);
