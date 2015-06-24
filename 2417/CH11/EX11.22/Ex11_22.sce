//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.22\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.22  (page no. 595) 
// Solution

//For brick,concrete,plaster,hot film and cold film,
A=1; //area //Unit:ft^2
//For a plane wall,the areas are all the same,and if we use 1 ft^2 of wall surface as the reference area,
//For Brick,
deltax=6/12; //6 inch = 6/12 feet //deltax=length //unit:ft
k=0.40; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
brickResistance=deltax/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For brick,");
printf("The resistance is %f (hr*F)/Btu\n",brickResistance);

//For Concrete,
deltax=(1/2)/12; //(1/2) inch = (1/2)/12 feet //deltax=length //unit:ft
k=0.80; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
concreteResistance=deltax/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For Concrete,");
printf("The resistance is %f (hr*F)/Btu\n",concreteResistance);

//For plaster,
deltax=(1/2)/12; // (1/2) inch = 6/12 feet //deltax=length //unit:ft
k=0.30; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
plasterResistance=deltax/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For plaster,");
printf("The resistance is %f (hr*F)/Btu\n",plasterResistance);

//For "hot film",
h=0.9; //Coefficient of heat transfer //Unit:Btu/(hr*ft^2*F)
hotfilmResistance=inv(h*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For hot film,");
printf("The resistance is %f (hr*F)/Btu\n",hotfilmResistance);

//For "cold film",
h=1.5; //Coefficient of heat transfer //Unit:Btu/(hr*ft^2*F)
coldfilmResistance=inv(h*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For cold film,");
printf("The resistance is %f (hr*F)/Btu\n\n",coldfilmResistance);

totalResistance=brickResistance+concreteResistance+plasterResistance+hotfilmResistance+coldfilmResistance; //the overall resistance  //Unit:(hr*f)/Btu
printf("The overall resistance is %f (hr*F)/Btu\n",totalResistance);

U=inv(totalResistance); //Unit:Btu/(hr*ft^2) //The overall conductance(or overall heat-transfer coefficient)
printf("The overall conductance(or overall heat-transfer coefficient) is %f Btu/(hr/ft^2)\n",U);
//In problem 11.21,the solution is straightforward,because the heat-transfer area is constant for all series resistances.
