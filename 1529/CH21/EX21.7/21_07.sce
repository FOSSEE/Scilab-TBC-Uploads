//Chapter 21, Problem 7
clc;
v1=2400;                                    //primary voltage
v2=400;                                     //secondary voltage
i0=0.5;                                     //no load current
Pl=400;                                     //power
phi=acos(v2/(v1*i0));                       //phase
im=i0*sin(phi);                             //magnetising component
ic=i0*cos(phi);                             //core loss component
printf("Magnetising loss component = %.3f A\n\n",im);
printf("Core loss component = %.3f A",ic);
