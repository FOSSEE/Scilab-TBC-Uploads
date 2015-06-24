//Chapter 7, Problem 10
clc;
l=150*10^-3;                            //length
u0=4*%pi*10^-7;                         //permeability of free space
ur=4000;                                //relative permeability
A=1800*10^-6;                           //cross-sectional area
S=l/(u0*ur*A);                          //Calculating reluctance
u=u0*ur;                                //Calculating absolute permeability
printf("Reluctance = %f H^-1\n\n\n",S);
printf("Absolute permeability = %f H/m",u*1000);
