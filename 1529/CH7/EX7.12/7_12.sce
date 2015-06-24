//Chapter 7, Problem 12
clc;
l1=6*10^-2;                     //length 1
A1=1*10^-4;                     //area 1
l2=2*10^-2;                     //length 2
A2=0.5*10^-4;                   //area 2
N=200;                          //no of turns
I=0.4;                          //current in the coil
u0=4*%pi*10^-7;                 //permeability of free space
ur=750;                         //relative permeability
S1=l1/(u0*ur*A1);               //calculating reluctance for 6 cm long path
S2=l2/(u0*ur*A2);               //calculating reluctance for 2 cm long path
S=S1+S2;                        //calculating total reluctance
phi=(N*I)/S;                    //calculating flux
B=phi/A2;                       //calculating flux density in 2cm path
printf("Flux density in 2cm path = %f T",B);
