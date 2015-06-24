//Chapter 9, Problem 14
clc;
N=1500;                             //no of turns
phi=25*10^-3;                       //flux
I=3;                                //current in coil
dI=3-0;                             //change in current
dt=150*10^-3;                       //change in time
L=(N*phi)/I;                        //calculating inductance
W=(1/2)*L*I^2;                      //calculating energy stored
E=-L*(dI/dt);                       //calculating induced emf
disp("(a)");
printf("Inductance = %f H\n\n",L);
disp("(b)");
printf("Energy stored = %f J\n\n",W);
disp("(c)");
printf("Induced e.m.f = %d V",E);
