//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.11\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.11  (page no. 159) 
// Solution

//Let is assume that a Carnot engine cycle operates between two temperatures in each case.
t=1000; //(unit:fahrenheit) 
//converting temperatures to absolute temperatures;
T1=t+460;
//T1*deltaS=Qin;
Qin=100; //Unit:Btu //heat added to the cycle 
deltaS=Qin/T1; //Change in entropy //Btu/R
T2=50+460; //converting 50 F temperature to absolute temperature;
Qr=T2*deltaS; //Heat rejected //Unit:Btu
printf("%f Btu energy is unavailable with respect to a receiver at 50 fahrenheit \n",Qr);
T2=0+460; //converting 0 F temperature to absolute temperature;
Qr=T2*deltaS; //Heat rejected //unit:Btu
printf("%f Btu energy is unavailable with respect to a receiver at 0 fahrenheit \n",Qr);
