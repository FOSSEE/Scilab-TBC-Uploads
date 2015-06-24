//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.15\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.15  (page no. 163) 
// Solution

//In problem 4.15,
//1 lbm of water at 500F is mixed with 1 lbm of water at 100F
m1=1; //Unit:lbm //mass
m2=1; //Unit:lbm //mass
c1=1; //Specific heat constant
c2=1; //Specific heat constant
t1=500; //(unit:fahrenheit)
t2=100; //(unit:fahrenheit)
cmix=1; //Specific heat constant of mixture
//now, m1*c1*t1 +m2*c2*t2 = (m1+m2)*cmix*t  //So,
t=((m1*c1*t1)+(m2*c2*t2))/((m1+m2)*cmix) //resulting temperature of the mixture
printf("In problem 4.14,The resulting temperature of the mixture is %f fahrenheit\n",t);

//Now,in problem 4.15,taking 0F as a reference temperature,
//For hot fluid,
deltas=cmix*log((t1+460)/(0+460)); //temperatures converted to absolute temperatures; //deltas=change in entropy //Unit:Btu/(lbm*R)
//For cold fluid,
s=cmix*log((t2+460)/(0+460)); //temperatures converted to absolute temperatures; //s=change in entropy //Unit:Btu/(lbm*R)
//At final mixture temperature of t F,the entropy of each system above 0F is,for the hot fluid 
s1=cmix*log((t+460)/(0+460)); //temperatures converted to absolute temperatures; //s1=change in entropy //Unit:Btu/(lbm*R)
//and for the cold fluid,
s2=cmix*log((t+460)/(0+460)); //temperatures converted to absolute temperatures; //s2=change in entropy //Unit:Btu/(lbm*R)
printf("The change in the entropy for hot fluid is %f Btu/(lbm*R)\n",s1-deltas);
printf("The change in the entropy for cold fluid is %f Btu/(lbm*R)\n",s2-s);
printf("The total change in entropy if %f Btu/(lbm*R",s1-deltas+s2-s);
