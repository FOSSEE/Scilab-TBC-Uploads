//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.14\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.14  (page no. 489) 
// Solution

//A Brayton cycle
rc=7; //Compression Ratio Rc=v2/v3
k=1.4;  //It is apparent incerease in compression ratio yields an increased cycle efficiency
cp=0.24; //Unit:Btu/(lbm*R) //Specific heat constant for constant pressure process
T3=1500; //(unit:fahrenheit) //peak tempeature
p1=14.7; //Unit:psia //Initial condition
T1=70+460; //temperatures converted to absolute temperatures; //Initial condition
R=53.3; //Unit:ft*lbf/lbm*R //constant of proportionality
nBrayton=1-((inv(rc))^(k-1)); //A Brayton cycle efficiency 
printf("A Brayton cycle efficiency is %f percentage\n",nBrayton*100);
//If we base our calculation on 1 lbm of gas and use subscripts that corresponds to points (1),(2),(3) and (4) of fig.9.22,we have
v1=(R*T1)/p1; //Unit:ft^3/lbm //specific volume at point 1
//Because rc=7 then,
v2=v1/rc; //Unit:ft^3/lbm //specific volume at point 2
//After the isentropic compression, T2*v2^k-1 = T1*v1^k-1
T2=T1*(v1/v2)^(k-1); //Unit:R //temperature at point 2
T2=T2-460; //Unit:fahrenheit //temperature at point 2
qin=cp*(T3-T2); //Heat in //Unit:Btu/lbm
printf("The heat in is %f Btu/lbm\n",qin);
//Because efficiency can be stated to be work out divided by heat in,
wbyJ=nBrayton*qin; //The work out //Unit:Btu/lbm
printf("The work out is %f Btu/lbm\n",wbyJ); //Answer is wrong in the book.cause they have taken efficiency value wrong
printf("The heat rejected is %f Btu/lbm\n",qin-wbyJ); //Anser is affected because of value of wbyJ
