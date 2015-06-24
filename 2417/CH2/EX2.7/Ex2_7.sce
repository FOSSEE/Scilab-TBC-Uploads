clear;
clc;
printf("\t\t\tProblem Number 2.7\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.7 (page no. 67) 
// Solution

printf("In problem 2.5\n");
m=1; //Unit:kg //m=mass
g= 9.81 //Unit:m/s^2 //g=The local gravity
Z=50 //Unit:m ////Z=The distance,the body is raised from its initial position when the force is applied //In this case Z=delivered water from well to pump
PE=m*g*Z; //PE=Potential Energy //Unit:Joule
printf("Change in potential energy per kg of water is %f J \n",PE); //J=Joule=N*m=kg*m^2/s^2
//Given data in problem 2.7 is
M=1000; //Unit;kg/min//M=Water density 
Power=PE*M*(1/60); //1 min=60 seconds //power //unit:Joule/s=W
printf("Power is %f Watt\n",Power); //Watt=N*m/s = Joule/s =Watt
//1 Hp=746 Watt
printf("Power is %f Horsepower",Power/745);
