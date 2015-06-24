//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.5\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.5  (page no. 558) 
// Solution

printf("In problem 11.4,\n");
//From example 11.4,,,
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
Q=deltaT/Rot; //Q=Heat transfer //Unit:Btu/(hr*ft^2);
printf("Heat transfer per square foot of wall is %f Btu/hr*ft^2",abs(Q));

printf("Now in problem 11.5,\n");
deltaT=R*Q //ohm's law (fourier's equation) //Change in temperature //fahrenheit
//For Brick,
deltaT=Q*R1; //Unit:fahrenheit //ohm's law (fourier's equation) //Change in temperature
t1=deltaT;
//For Concrete,
deltaT=Q*R2; //Unit:fahrenheit //ohm's law (fourier's equation) //Change in temperature
t2=deltaT;
//For plaster,
deltaT=Q*R3; //Unit:fahrenheit //ohm's law (fourier's equation) //Change in temperature
t3=deltaT;

deltaTo=t1+t2+t3; //Overall Change in temperature //fahrenheit
printf("The overall change in temperature is %f F\n",abs(deltaTo));
//The interface temperature are:
printf("The interface temperature are:\n");
printf("For brick-concrete : %f fahrenheit\n",abs(T2)+abs(t1));
printf("For concrete-plaster : %f fahrenheit\n",abs(T2)+abs(t1)+abs(t2));
