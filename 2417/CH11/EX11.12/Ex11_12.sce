//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.12\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.12  (page no. 569) 
// Solution

//From problem 11.9,
//The bare pipe
r2=3.50; //Outside diameter //Unit:in.
r1=3.00; //inside diameter //Unit:in.
Ti=240; //Inside temperature //unit:fahrenheit
L=5; //Length //Unit:ft
k=26; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity
Rpipe=log(r2/r1)/(2*%pi*k*L); //the resistance of pipe //Unit:(hr*F)/Btu
printf("The resistance of pipe is %f (hr*F)/Btu\n",Rpipe);

//Now,in problem 11.12,
To=70; //Outside temperature //unit:fahrenheit
deltaT=Ti-To; //Change in temperature //unit:fahrenheit
h=0.9; //Coefficient of heat transfer //Unit:Btu/(hr*ft^2*F)
A=(%pi*r2)/12*L;  //Area //Unit:ft^2 //1 inch = 1/12 feet //unit:ft^2
Rconvection=inv(h*A); //The resistance due to natural convection to the surrounding air //Unit:(hr*F)/Btu
printf("The resistance due to natural convection to the surrounding air is %f (hr*F)/Btu\n",Rconvection);

Rtotal=Rpipe+Rconvection; //The total resistance   //unit:(hr*F)/Btu
printf("The total resistance is %f (hr*F)/Btu\n\n",Rtotal);
Q=deltaT/Rtotal; //ohm's law (fourier's equation) //The heat transfer from the pipe to the surrounding air   //unit:Btu/hr
printf("The heat transfer from the pipe to the surrounding air is %f Btu/hr\n",Q);
