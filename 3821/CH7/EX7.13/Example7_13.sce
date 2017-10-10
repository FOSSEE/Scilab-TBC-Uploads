///Chapter No 7 Fluid Mechanics
///Example 7.13 Page No:124
///Find Discharge through pipe
///Input data
clc;
clear;
D1=0.2;                      //Diameter of pipe section 1 in m
D2=0.3;                      //Diameter of pipe section 2 in m
V1=15;                       //Velocity of water in m/s
pi=3.14;

///calculation
Q=((3.14/4)*(0.2)^2)*15;    //Discharge through pipe in m**3/s
V2=(((3.14/4)*(0.2)^2)*15)/((3.14/4)*(0.3)^2); //velocity of section2 in m/s


///Output
printf('Discharge through pipe= %f m^3/s \n ',Q);
printf('velocity of section2= %f m/s \n ',V2);
