//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.18\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.18  (page no. 579) 
// Solution

//We first check the Reynolds number and note that G is same as for problem 11.17.So,
//G is the mass flow rate per unit area (lbm/(hr*ft^2)).
G=((20*60)*(4*144))/(%pi*(0.87^2)); //Unit:lbm/(hr*ft^2)  //Inside diameter=0.87 inch ////1 in.^2=144 ft^2 //20 lbm/min of water(min converted to second)
//the viscosity of air at these conditions is obtained from figure 11.17 as 0.062 lbm/(ft*hr).So,
mu=0.062; //the viscosity of air //unit:lbm/(ft*hr)
D=0.87/12; //Inside diameter //1 in^2=144 ft^2
//Reynolds number is DG/mu,therefore 
Re=(D*G)/mu; //Reynolds number
printf("The Reynolds number is %f\n",Re);
//which places the flow in the turbulent regime.Because W/1000(W=weight flow) is same as for problem 11.17 and equals 1.2,we now enter figure 11.19 at 1.2 and 400F   to obtain h1=135.Because the inside tube diameter is same as before,F=1.25.Therefore,
h1=135; //basic heat transfer coefficient //unit:Btu/(hr*ft^2*F)
F=1.25; //correction factor
h=h1*F; //heat transfer coefficient //the inside film coefficient //unit:Btu/(hr*ft^2*F)
printf("The inside film coefficient is %f Btu/(hr*ft^2*F)\n",h);
//It is interesting that for equal mass flow rates,water yields a heat-transfer coefficient almost five times greater than air
