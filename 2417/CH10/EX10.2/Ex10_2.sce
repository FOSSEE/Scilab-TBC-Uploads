//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.2\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.2  (page no. 504) 
// Solution

T1=20+273; //20C=20+273 R //Energy flows into the system at reservoir at constant temperature T1(unit:R)
T2=-5+273; //-5C=-5+273 R //Heat is rejected to the constant temperature T2(Unit:R)
printf("Solution for (a),\n");
COP=T2/(T1-T2); //Coefficient of performance
printf("Coefficient of performance(COP) of the cycle is %f\n\n",COP);
printf("Solution for (b),\n");
Qremoved=30; //Unit:kW //heat removal 
W=Qremoved/COP; //power required //unit:kW
printf("The power required is %f kW \n\n",W);
printf("Solution for (c),\n");
Qrej=Qremoved+W; //The rate of heat rejected to the room  //Unit:kW
printf("The rate of heat rejected to the room is %f kW",Qrej);
