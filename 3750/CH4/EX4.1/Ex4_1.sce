//Strength Of Material By G.H.Ryder
//Chapter 4
//Example 1
//To calculate the maximum pressure set up in the oil
clc();

//Initialization of Variables
d=6; //diameter of plunger, Unit in mm
Mp=1;  //Mass of plunger, Unit in Kg
m=1.5;  //Mass dropped on the plunger, Unit in kg
v=5000;  // Volume of oil, Unit in cm^3
K=2800;   //Bulk Modulus, Unit in N/mm^2
g=9.81;   //acceleration due to gravity, Unit in m/sec^2
h=5;    //Height, Unit in cm

//Computations

// Let p be addtional momentary maximum stress set up by falling weight
//Loss of PE=m*g*(h*10+P*v*10^3+4)/(%pi*d^2)Nmm.......(i)
//Gain of Strain energy=(P^2/2K)*v*10^3 Nmm.......(ii)
//Equating (i) and (ii) and multiplying by K/(v*10^3),we get quadratic equation in P with coefficients
a=1/2; 
b=-m*g*4/(%pi*d^2);
c=-m*g*h*10*K/(v*10^3);


p=(-b+sqrt(b^2-4*c*a))/(2*a);   //solution for quadratic equation in P  , Unit in N/mm^2,        The answer vary due to round off error
Pmax=p+Mp*g*4/(%pi*d^2);  //Maximum pressure ,Unit in N/mm^2,         The answer vary due to round off error

//Result
printf("Final Maximum Pressure set up in oil is %.2f N/mm^2",Pmax)
