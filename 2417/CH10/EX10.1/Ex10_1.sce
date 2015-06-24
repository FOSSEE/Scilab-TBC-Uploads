//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.1\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.1  (page no. 503) 
// Solution

T1=70+460; //70F=70+460 R //Energy flows into the system at reservoir at constant temperature T1(unit:R)
T2=32+460; //32F=32+460 R //Heat is rejected to the constant temperature T2(Unit:R)
printf("Solution for (a),\n");
COP=T2/(T1-T2); //Coefficient of performance
printf("Coefficient of performance(COP) of the cycle is %f\n\n",COP);
printf("Solution for (b),\n");
Qremoved=1000; //Unit:Btu/min //heat removal
WbyJ=Qremoved/COP; //The power required //Unit:Btu/min
printf("The power required is %f Btu/min\n\n",WbyJ);
printf("Solution for (c),\n");
Qrej=Qremoved+WbyJ; //The rate of heat rejected to the room  //Unit:Btu/min
printf("The rate of heat rejected to the room is %f Btu/min",Qrej);
