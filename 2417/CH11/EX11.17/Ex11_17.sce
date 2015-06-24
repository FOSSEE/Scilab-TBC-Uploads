//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.17\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.17  (page no. 578) 
// Solution

//The first step is to check Reynolds number.It will be recalled that the Reynolds number is given by (D*V*rho)/mu and is dimensionless.Therefore,we can use D,      diameter in feet;V velocity in ft/hr;rho density in lbm/ft^3 and mu viscosity in lbm/(ft*hr).
//Alternatively,the Reynolds number is given by (D*G)/mu,where G is the mass flow rate per unit area (lbm/(hr*ft^2)).
G=((20*60)*(4*144)/(%pi*0.87^2)); //Unit:lbm/(hr*ft^2)  //Inside diameter=0.87 inch ////1 in.^2=144 ft^2 //20 lbm/min of water(min converted to second)
//the viscosity of air at these conditions is obtained from figure 11.17 as 0.062 lbm/(ft*hr).So,
mu=0.33; //the viscosity of air //unit:lbm/(ft*hr)
D=0.87/12; //Inside diameter //1 in^2=144 ft^2
//Therefore Reynolds number is 
Re=(D*G)/mu; //Reynolds number
//which is well into the turbulent flow regime.
printf("The Reynolds number is %f\n",Re);
//The next step is to enter Figure 11.18 at W/1000 of 20*(60/1000)=1.2 and 400F to obtain h1=630.
//From the figure 11.20,we obtain F=1.25 for an inside diameter of 0.87 inch.So,
h1=630; //basic heat transfer coefficient //unit:Btu/(hr*ft^2*F)
F=1.25; //correction factor
h=h1*F; //heat transfer coefficient //the inside film coefficient //unit:Btu/(hr*ft^2*F)
printf("The heat-transfer coefficient is %f Btu/(hr*ft^2*F)\n",h);
