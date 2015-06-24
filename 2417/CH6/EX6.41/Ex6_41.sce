clear;
clc;
printf("\t\t\tProblem Number 6.41\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.41 (page no. 304) 
// Solution

//For Methane(CH4,MW=16)
p=500; //evaluate specific volume at p pressure //Unit:psia
pc=674; //critical temperature //Unit:psia
T=50+460; //evaluate specific volume at T temperature //Unit:R
Tc=343; //critical temperature //Unit:R
R=1545/16; //gas constant R = 1545/Molecular Weight //ft*lbf/lbm*R
pr=p/pc; //reduced pressure //unit:psia
Tr=T/Tc; //reduced temperature //unit:R
//Reading figure 6.28 at these values gives
Z=0.93; //compressibility factor
//Z=(p*v)/(R*T)
v=Z*((R*T)/(p*144)); //ft^3/lbm //1 ft^2=144 in^2(for conversion of unit) //specific volume
printf("Using the value of Z=0.93,the specific volume is %f ft^3/lbm\n",v);
//For ideal gas,
v=(R*T)/(p*144); //ft^3/lbm //1 ft^2=144 in^2(for conversion of unit) //specific volume
printf("For the ideal gas,the specific volume is %f ft^3/lbm\n",v);
