clc
//initialisation of variables
P= 100 //psia
V= 3 //cu ft
P1= 20 //psia
n= 1.4
//CALCULATIONS
V1= V*(P/P1)^(1/n)
W= (P1*V1*144-P*V*144)/(1-n)
//RESULTS
printf ('P dV work for this process= %.f ft lb',W)
