//Example number 9.3, Page number 203

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(c)
ni=1.5*10**16;    //particle density(per m**3)
mew_e=0.13;        //electron mobility(m**2/Vs)
mew_h=0.05;       //hole mobility(m**2/Vs)
ND=5*10**20;     //density(per m**3)
//Calculation
sigma=ni*e*(mew_e+mew_h);          //intrinsic conductivity(s)
sigma_d=ND*e*mew_e;       //conductivity during donor impurity(ohm-1 m-1)
sigma_a=ND*e*mew_h;       //conductivity during acceptor impurity(ohm-1 m-1)
//Result
printf("intrinsic conductivity is %.3e (ohm-m)^-1",sigma)
printf("\n conductivity during donor impurity is %.1f (ohm-m)^-1",sigma_d)
printf("\n conductivity during donor impurity is %.f (ohm-m)^-1",sigma_a)
