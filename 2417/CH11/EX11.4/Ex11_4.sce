//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.4\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.4  (page no. 558) 
// Solution

//For Brick,
deltaX=6/12; //6 inch = 6/12 feet //deltaX=length //unit:ft
A=1; //area  //unit:ft^2
k=0.40; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For brick,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",R);
R1=R;

//For Concrete,
deltaX=(1/2)/12; //(1/2) inch = (1/2)/12 feet //deltaX=length //unit:ft
A=1; //area //ft^2
k=0.80; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For Concrete,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",R);
R2=R;

//For plaster,
deltaX=(1/2)/12; // (1/2) inch = 6/12 feet //deltaX=length //unit:ft
A=1; //area //ft^2
k=0.30; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:(hr*f)/Btu
printf("For plaster,\n");
printf("The resistance is %f (hr*F)/Btu\n\n",R);
R3=R;

Rot=R1+R2+R3; //Rot=The overall resistance //unit:(hr*F)/Btu
printf("The overall resistance is %f (hr*F)/Btu\n\n",Rot);
T1=70; //temperature maintained at one face //fahrenheit 
T2=30; //tempetature maintained at other face //fahrenheit 
deltaT=T2-T1; //fahrenheit //Change in temperature
Q=deltaT/Rot; //Q=Heat transfer //Unit:Btu/(hr*ft^2); //ohm's law (fourier's equation)
printf("Heat transfer per square foot of wall is %f Btu/hr*ft^2",abs(Q));
