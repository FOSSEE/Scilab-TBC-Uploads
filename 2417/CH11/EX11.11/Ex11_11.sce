//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.11\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.11  (page no. 567) 
// Solution

//From problem 11.9,
//A bare steel pipe
r2=3.50; //Outside diameter //Unit:in.
r1=3.00; //inside diameter //Unit:in.
Ti=240; //Inside temperature //unit:fahrenheit
L=5; //Length //Unit:ft
k1=26; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity
ans1=(inv(k1)*log(r2/r1));

//Now,in problem 11.11,
//Mineral wool
r3=5.50; //inside diameter //Unit:in.
r2=3.50; //outside diameter //Unit:in.
To=85; //Outside temperature //unit:fahrenheit
deltaT=Ti-To; //Change in temperature //unit:fahrenheit
k2=0.026 //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity
ans2=(inv(k2)*log(r3/r2));

Q=(2*%pi*L*deltaT)/(ans1+ans2); //The heat loss from the pipe  //unit:Btu/hr
printf("The heat loss from the pipe is %f Btu/hr",Q);


