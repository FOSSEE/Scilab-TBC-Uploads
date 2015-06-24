//Chapter 3, Problem 7
clc;
L=1200;                     //Length of copper cable in meter
D=12*10^-3;                 //Diameter of cable in meter
p=1.7*10^-8;                //Resistivity of cable in ohm.meter
r=D/2;                      //Calculating radius
A=%pi*r^2;                  //Caculating area
R=(p*L)/A;                  //Calculating resistance
printf("Resistance of wire = %f ohm",R);
