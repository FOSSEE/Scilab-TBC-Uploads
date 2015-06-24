//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.15\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.15  (page no. 539) 
// Solution

//THE HEAT PUMP
T1=70+460; //70F=70+460 R //Energy flows into the system at reservoir at constant temperature T1(unit:R) //from problem 10.1
T2=32+460; //32F=32+460 R //Heat is rejected to the constant temperature T2(Unit:R) //from problem 10.1
COP=T1/(T1-T2); //Coefficient of performance for carnot heat pump
printf("Coefficient of performance(COP) of the carnot cycle is %f\n",COP);
printf("The COP can also be obtained from the energy items solved for in problem 10.1\n")
//In problem 10.1, The power was found to be 77.2 Btu/min and the total tare of heat rejection was 1077.2 Btu/min
//Therefore,
printf("Coefficient of performance(COP) of the cycle is %f\n",1077.2/77.2); 
