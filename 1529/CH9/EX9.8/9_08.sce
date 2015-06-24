//Chapter 9, Problem 8
clc;
N=150;
//Since the flux reverses, the flux changes from+400 μWb to −400 μWb,
// a total change of flux of 800 μWb.
dphi=800*10^-6;                 //change in flux
dt=40*10^-3;                    //change in time
E=-N*(dphi/dt);                 //calculating induced emf
printf("Induced emf = %f V",E);
