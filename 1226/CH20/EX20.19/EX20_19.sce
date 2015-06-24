clc,funcprot(0);.......//Example 20.19
//initialisation of variables
p3=30;..........//delivery pressure in bar
p1=1;.........//suction pressure  in bar
t1=273+15;.......//suction temperature in K
n=1.3;.........//adiabatic index
//calculation
p2=sqrt(p1*p3);.....//Pressure before entering High pressure cylinder in bar
t21=t1*((p2/p1)^((n-1)/n));.........//Actual temperature before entering the high pressure turbine in K
r=sqrt((p2^(1/n))*(t21/t1));............//Ratio of cylinder diameters
disp(r,"Ratio of cylinder diameters:")
