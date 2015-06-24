//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.12\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.12  (page no. 160) 
// Solution

Qin=1000; //Unit:Joule //heat entered to the system
t=500; //(unit:Celcius)  //temperature
//converting temperature
T1=t+273; //Unit:Kelvin
deltaS=Qin/T1; //Change in entropy //Unit:J/K
printf("Solution for (a),\n");
T2=20+273; //converted 20 Celcius temperature to Kelvin;
Qr=T2*deltaS; //Heat rejected at 20 celcius //Joule
printf("%f Joule energy is unavailable with respect to a receiver at 20 Celcius\n\n",Qr);

printf("Solution for (b),\n")
T2=0+273; //converted 0 Celcius temperature to Kelvin
Qr=T2*deltaS; //heat rejected at 0 celcius //Joule
printf("%f Joule energy is unavailable with respect to a receiver at 0 Celcius\n",Qr);
