clear;
clc;
printf("\t\t\tProblem Number 2.6\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.6 (page no. 66) 
// Solution

Rho=62.4; //Unit:lbm/ft^3 //Rho=The density of water
A=10000; //Flow=10000; gal/min
V=(231/1728); // 12 inch=1 ft //So,1 ft^3=1728 in^3  // One Gallon is a volumetric measure equal to 231 in^3
//A*V //Unit:ft^3/min

//In example, 2.4:
printf("From example 2.4\n");
Z=600; //Unit:ft //Z=The distance,the body is raised from its initial position when the force is applied
gc=32.174; //Unit: (lbm*ft)/(lbf*s^2) //gc is constant of proportionality
g=gc; //Unit:ft/s^2 //g=The local gravity
m=1; //Unit:lbm //m=mass
PE=(m*g*Z)/gc; //potential energy //Unit:ft*lbf
printf("%f ft*lbf work is done lifting the water to elevation\n ",PE);

//So,
printf("In example 2.5 \n")
M=Rho*A*V; //M=the mass flow
Power=M*PE; //Unit:ft*lbf/lbm
printf("Generated Power is %f ft*lbf/lbm \n",Power);
// 1 horsepower = 33,000 ft*lbf/min
printf("Power = %f hp\n",Power/33000);
