//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.3\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.3  (page no. 556) 
// Solution

//From example 11.1,
deltaX=6/12; //6 inch = 6/12 feet //deltaX=length //unit:feet 
A=1; //area  //ft^2
k=0.40; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table

Rt=deltaX/(k*A); //Thermal resistance //Unit:(hr*f)/Btu

//Q=deltaT/Rt //Q=heat transfer //ohm's law (fourier's equation)
//i=deltaE/Re //i=current in amperes //deltaE=The potential difference //Re=the electrical resistance //ohm's law
// Q/i = (deltaT/Rt)*(deltaE/Re)
//Q/i=100; //Given // 1 A correspond to 100 Btu/(hr*ft^2)
deltaE=9; //Unit:Volt //potential difference
T1=150; //temperature maintained at one face //fahrenheit
T2=80; //tempetature maintained at other face //fahrenheit
deltaT=T2-T1; //fahrenheit //Change in temperature
Re=(100*deltaE*Rt)/deltaT; //Unit:Ohms //The electrical resistance needed
printf("The electrical resistance needed is %f ohms\n",abs(Re));
i=deltaE/Re; //current //Unit:amperes
Q=100*i; //Heat transfer per square foot of wall //Unit:Btu/hr*ft^2
printf("Heat transfer per square foot of wall is %f Btu/hr*ft^2",abs(Q));


