//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.6\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.6  (page no. 559) 
// Solution

//For Brick,
deltaX=0.150; //Unit:m //150 mm = 0.150 m //deltaX=length //unit:meter
A=1; //area  //unit:m^2
k=0.692; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:C/W
printf("For brick,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R1=R;

//For Concrete,
deltaX=0.012; //Unit:m //12 mm = 0.0120 m //deltaX=length //unit:meter
A=1; //area  //unit:m^2
k=1.385; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:C/W
printf("For Concrete,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R2=R;

//For plaster,
deltaX=0.0120; //Unit:m //12 mm = 0.0120 m //deltaX=length //unit:meter
A=1; //area  //unit:m^2
k=0.519; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:C/W
printf("For plaster,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R3=R;

Ro=R1+R2+R3; //Rot=The overall resistance //unit:C/W
printf("The overall resistance is %f Celcius/W\n",Ro);
T1=0; //temperature maintained at one face //Celcius
T2=20; //tempetature maintained at other face //Celcius
deltaT=T2-T1; //Change in temperature  //Celcius
Q=deltaT/Ro; //Q=Heat transfer //Unit:W/m^2; //ohm's law (fourier's equation)
printf("Heat transfer per square meter of wall is %f W/m^2",abs(Q));
