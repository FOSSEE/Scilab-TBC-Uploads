//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.2\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.2  (page no. 149) 
// Solution

//given data
Qin=100; //heat added to the cycle 

printf("In problem 4.1,\n")
//given data
t1=1000;  //(unit:fahrenheit) //Source temperature
t2=80;   //(unit:fahrenheit)  //Sink temperature
//solution
//converting temperatures to absolute temperatures;
T1=t1+460; //Source temperature //Unit:R
T2=t2+460;  //Sink temperature //Unit:R
printf("Solution for (a)\n");
printf("Efficiency of the engine is %f percentage\n\n",((T1-T2)/T1)*100);

printf("Now in problem 4.2,\n")
W=0.63*Qin; //W=W/J; //Efficiency in problem 4.1 
W=Qin*(W/Qin); //amount of work
Qr=Qin-W; //Qin-Qr=W/J  //Qr=heat rejected by the cycle
printf("The heat removed from the reservoir %f units",Qr);
