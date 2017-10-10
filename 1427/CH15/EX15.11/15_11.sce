//ques-15.11
//Calculating total pressure to be applied
clc
//N2/H2 = 1/3
a=1;//moles of N2
b=3;//moles of H2
Kp=1.64*10^-4;//equilibrium constant (in atm^-2)
c=10/100;//content of ammonia
//c = (2*x)/(4-2*x)
x=0.4/2.2;
Z=(16*x^2*(2-x)^2)/(27*Kp*(1-x)^4);
P=sqrt(Z);//pressure
printf("Pressure to be applied is %.2f atm.",P);
