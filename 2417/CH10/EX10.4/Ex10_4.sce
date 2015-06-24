//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.4\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.4  (page no. 506) 
// Solution

COP=4.5; //Coefficient of performance //From problem 10.1
HPperTOR=4.717/COP; //Horsepower per ton of refrigeration //Unit:hp/ton
Qremoved=1000; //Unit:Btu/min //From problem 10.1
//1000 Btu/min /200 Btu/min ton = 5 tons of refrigeration
HPrequired=HPperTOR*5; //The horsepower required //unit:hp
printf("The horsepower required is %f hp\n",HPrequired);
//In problem 10.1, 77.2 Btu/min was required
printf("The power required is %f hp\n",77.2*778*inv(33000)); //1 Btu=778 ft*lbf //1 min*hp = 33000 ft*lbf
//The ratio of the power required in each problem is the same as the inverse ratio of the COP value
//Therefore,
printf("The power required is %f hp\n",(COP/12.95)*HPrequired); //COP(in problem 10.1)=12.95
printf("This checks our results")
