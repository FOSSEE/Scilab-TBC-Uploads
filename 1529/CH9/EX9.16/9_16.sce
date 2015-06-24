//Chapter 9, Problem 16
clc
N=750                           //no of turns
L=3                             //inductance in henry
I=2                             //current in ampere
t=20e-3                         //time in milisec
phi=(L*I)/N
E=-(N*phi)/t
printf("Flux linking the coil = %d mWb\n\n",phi*1000)
printf("Induced emf = %d V",E)
