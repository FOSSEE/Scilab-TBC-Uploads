close();
clear;
clc;
//temperature coefficients of resistances 'R1', 'R2' are 'a1', 'a2'
a1 = 0.004; 
a2 = 0.005;
t1 = 10; //degree C
t2 = 60; //degree C
//At t1
//R12 = Ro1/Ro2
R12 = (1+t1*a2)/(1+t1*a1);
//At t2
//power ratio 'p'
p = R12*(1+t2*a1)/(1+t2*a2);
mprintf("Ratio of power consumed in R2 to that in R1 at %d degree C, p = %0.3f",t2,p);