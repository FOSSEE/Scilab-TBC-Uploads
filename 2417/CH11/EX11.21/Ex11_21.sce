//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.21\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.21  (page no. 589) 
// Solution

//Because the conditions of illustrative problem 11.15 are the same as for problem 11.19 and 11.20,we can solve this problem in two ways to obtain a check.
//Thus,adding the results of these problems yields,
printf("Adding the results of the problems yields,\n")
Qtotal=206.2+214.5; //Unit:Btu/hr //total heat loss
printf("The heat loss due to convection is %f Btu/hr\n",Qtotal);

//We can also approach this solution by obtaining radiation and convection heat-transfer co-efficcient.Thus,
hcombined=0.9+0.94; //Coefficient of heat transfer //Unit:Btu/(hr*ft^2*F)
D=3.5/12; //3.5 inch = 3.5/12 feet //Unit:ft //Outside diameter
Ti=120; //Inside temperature //unit:fahrenheit
To=70; //Outside temperature //unit:fahrenheit
deltaT=Ti-To; //unit:fahrenheit //Change in temperature
L=5; //Length //Unit:ft //From problem 11.10
A=(%pi*D)*L;  //Area //Unit:ft^2 
Qtotal=hcombined*A*deltaT; //Unit:Btu/hr //total heat loss due to convection //Newton's law of cooling
printf("By obtaining radiation and convection heat-transfer co-efficcient,\n")
printf("The heat loss due to convection is %f Btu/hr",Qtotal);
