//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.7\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.7  (page no. 560) 
// Solution

printf("In problem 11.6,\n");
//For Brick,
deltaX=0.150; //Unit:m //150 mm = 0.150 m //deltaX=length //unit:meter
A=1; //area //unit:meter^2
k=0.692; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:Celcius/W
printf("For brick,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R1=R;

//For Concrete,
deltaX=0.012; //Unit:m //12 mm = 0.0120 m //deltaX=length //unit:meter
A=1; //area  //unit:meter^2
k=1.385; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:Celcius/W
printf("For Concrete,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R2=R;

//For plaster,
deltaX=0.0120; //Unit:m //12 mm = 0.0120 m //deltaX=length //unit:meter
A=1; //area  //unit:meter^2
k=0.519; //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity //From the table
R=deltaX/(k*A); //Thermal resistance //Unit:Celcius/W
printf("For plaster,\n");
printf("The resistance is %f Celcius/W\n\n",R);
R3=R;

Ro=R1+R2+R3; //Rot=The overall resistance Celcius/W
printf("The overall resistance is %f Celcius/W\n",Ro);
T1=0; //temperature maintained at one face //Celcius
T2=20; //tempetature maintained at other face //Celcius
deltaT=T2-T1; //Change in temperature //Celcius
Q=deltaT/Ro; //Q=Heat transfer //Unit:W/m^2;
printf("Heat transfer per square meter of wall is %f W/m^2\n\n",abs(Q));

printf("Now in problem 11.5,\n");
//deltaT=R*Q //ohm's law (fourier's equation)
//For Brick,
deltaT=Q*R1; //Unit:Celcius //Change in temperature
t1=deltaT;
//For Concrete,
deltaT=Q*R2; //Unit:Celcius //Change in temperature
t2=deltaT;
//For plaster,
deltaT=Q*R3; //Unit:Celcius //Change in temperature
t3=deltaT;

deltaTo=t1+t2+t3; //The overall Change in temperature //Celcius
printf("The overall change in temperature is %f celcius\n",abs(deltaTo));
//The interface temperature are:
printf("The interface temperature are:\n");
printf("%f Celcius\n",abs(deltaTo)-abs(t1));
printf("%f Celcius\n",abs(deltaTo)-abs(t1)-abs(t2));
printf("%f Celcius\n",abs(deltaTo)-abs(t1)-abs(t2)-abs(t3));
