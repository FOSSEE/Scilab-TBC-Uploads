//Chapter 2, Example 2.1, page 25
clc
//Initialisation
sig=0.005                                //sigma
ur=1                                     //relative permeability
er=12                                    //relative permittivity
eo=8.85*10**-12                          //permittivity of a free space
f1=10*10**3                              //frequency of radio wave 1
f2=10*10**9                              //frequency of radio wave 2
pi=3.14

//Calculation
c1=sig/(2*pi*f1*eo*er)              //conductivity at f1
c2=sig/(2*pi*f2*eo*er)              //conductivity at f2


//Result
printf("conductivity at f1 = %.1f >> 1\n",c1)
printf("conductivity at f2 = %.1f x10^-4 >> 1",(c2*10**4))
