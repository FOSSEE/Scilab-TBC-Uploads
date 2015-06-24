//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.3\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.3  (page no. 505) 
// Solution

T1=70+460; //70F=70+460 R //Energy flows into the system at reservoir at constant temperature T1(unit:R)
T2=20+460; //20F=20+460 R //Heat is rejected to the constant temperature T2(Unit:R)
printf("Solution for (a),\n");
COP=T2/(T1-T2); //Coefficient of performance
printf("Coefficient of performance(COP) of the cycle is %f\n\n",COP);
printf("Solution for (b),\n");
HPperTOR=4.717/COP; //Horsepower per ton of refrigeration //Unit:hp/ton
COPactual=2; //Actual Coefficient of performance(COP) is stated to be 2
HPperTORactual=4.717/COPactual; //Horsepower per ton of refrigeration(actual) //Unit:hp/ton
printf("The horsepower required by the actual cycle over the minimum is %f hp/ton",HPperTORactual-HPperTOR);
