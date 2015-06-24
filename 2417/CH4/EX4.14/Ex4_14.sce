//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.14\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.14  (page no. 162) 
// Solution

//1 lbm of water at 500F is mixed with 1 lbm of water at 100F
m1=1; //Unit:lbm //mass
m2=1; //Unit:lbm //mass
c1=1; //Specific heat constant
c2=1; //Specific heat constant
t1=500; //(unit:fahrenheit) 
t2=100; //(unit:fahrenheit)
cmix=1; //Specific heat constant of mixture
//now, m1*c1*t1 +m2*c2*t2 = (m1+m2)*cmix*t
//So,
t=((m1*c1*t1)+(m2*c2*t2))/((m1+m2)*cmix) //resulting temperature of the mixture
printf("The resulting temperature of the mixture is %f fahrenheit\n",t);
//For this problem,the hot steam is cooled
deltas=cmix*log((t+460)/(t1+460)); //temperatures converted to absolute temperatures; //deltas=change in entropy //Unit:Btu/(lbm*R)
//The cold steam is heated
deltaS=cmix*log((t+460)/(t2+460)); //temperatures converted to absolute temperatures; //deltaS=change in entropy //Unit:Btu/(lbm*R)
printf("The net change in entropy is %f Btu/(lbm*R)\n",deltaS+deltas);
