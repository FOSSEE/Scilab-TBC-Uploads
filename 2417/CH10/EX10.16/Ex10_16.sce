//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.16\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.16  (page no. 539) 
// Solution

//Let us first consider the cycle as a refrigeration cycle
//In problem 10.1
T1=70+460; //70F=70+460 R //Energy flows into the system at reservoir at constant temperature T1(unit:R)
T2=0+460; //0F=32+460 R //Heat is rejected to the constant temperature T2(Unit:R)
COP=T2/(T1-T2); //Coefficient of performance
printf("Coefficient of performance(COP) of the cycle is %f\n\n",COP);
Qremoved=1000; //Unit:Btu/min //heat removal
WbyJ=Qremoved/COP; //the power input //unit:Btu/min
printf("The power input is %f Btu/min\n\n",WbyJ);
Qrej=Qremoved+WbyJ; //The rate of heat rejected to the room //Unit:Btu/min
printf("The rate of heat rejected to the room is %f Btu/min\n",Qrej);
printf("The COP as a heat pump is %f\n",Qrej/WbyJ);
printf("As a check,COP of heat pump is %f = 1 + COP of carnot cycle %f",Qrej/WbyJ,COP);

