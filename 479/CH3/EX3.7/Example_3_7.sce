//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.7
clear;
clc;

//Given
m = 5000;//Amount of steam recived per hour in Kg
H1 = 666;//Specific enthalpy when steam entered in the turbine in Kcal/Kg
H2 = 540;//Specific enthalpy when steam left the turbine in Kcal/Kg
u1 = 3000/60;//velocity at which steam entered in m/sec
u2 = 600/60;//velocity at which steam left in m/sec
Z1 = 5;//height at which steam entered in m
Z2 = 1;//height at which steam left in m
Q = -4000;//heat lost in Kcal
g = 9.81;

//To calculate the horsepuwer output of the turbine
delH = H2-H1;//change in enthalpy in Kcal
delKE = ((u2^2)-(u1^2)/(2*g))/(9.8065*427);//change in kinetic energy in Kcal; 1kgf = 9.8065 N
delPE = ((Z2-Z1)*g)/(9.8065*427);//change in potential energy in Kcal
W = -(m*(delH+delKE+delPE))+Q;//work delivered in Kcal/hr
W1 = W*(427/(3600*75));//work delivered by turbine in hp
mprintf('Work delivered by turbine is %f hp',W1);
//end