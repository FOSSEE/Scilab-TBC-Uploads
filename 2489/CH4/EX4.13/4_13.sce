clc
//Intitalisation of variables
clear
n= 4
n1= 1
n2= 1.5
R= 2 //cal deg^-1 mole^-1
m=3
//CALCULATIONS
Cv= ((3*n-5)+n1+n2)*R
Cv1= ((3*n-6)+2*m*(n2-n1))*R
//RESULTS
printf ('Molar heat capacity of acetylene = %.f cal deg^-1 mole^-1',Cv)
printf ('\n Molar heat capacity of ammonia = %.f cal deg^-1 mole^-1',Cv1)
