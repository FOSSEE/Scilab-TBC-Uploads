clear;
clc;
printf("\t\t\tProblem Number 2.10\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.10 (page no. 70) 
// Solution

m=10 //Unit:kg //m=mass
Z=10 //Unit:m //Z=The distance,the body is raised from its initial position when the force is applied
g= 9.81 //Unit:m/s^2 //g=The local gravity
//There are no losses in the system
//So,initial potential energy plus initial kinetic energy equal to sum of final potential energy plus final kinetic energy
//So, PE1+KE1=PE2+KE2
//From the figure,KE1=0; PE2=0;
//So,PE1=KE2;
PE1=m*g*Z; //PE=Potential Energy //Unit:Joule
//KE2=(m*v^2)/2
v=(PE1*2)/m; 
V=sqrt(v); //Unit:m/s //velocity 
printf("Velocity = %f m/s",V);
KE2=PE1; //kinetic energy //Unit:Joule
printf("\nKinetic energy is %f N*m",PE1);
