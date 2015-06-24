//Chapter 9, Problem 17, Figure 9.10
clc;
N=800;                      //no of turns
I=0.5;                      //current in coil
l=%pi*120*10^-3;            //length of coil
u0=4*%pi*10^-7;             //permeability of free space
ur=3000;                    //relative permeability 
dI=0.5-0;                   //change in current
dt=80*10^-3;                //change in time
A=400*10^-6;                 //cross sectional area
S=l/(u0*ur*A);              //calculating reluctance
L=N^2/S;                    //calculating inductance
E=-L*(dI/dt);               //calculating induced emf
printf("Self inductance L = %f H\n\n\n",L);
printf("Induced emf E = %d V",E);
