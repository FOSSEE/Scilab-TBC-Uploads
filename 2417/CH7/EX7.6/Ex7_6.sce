//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.6\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.6  (page no. 327) 
// Solution

//we will assume that we have 100 volumes of gas mixture and set up table 7.2.In first coloumn,we tabulate the gas,and in the second coloumn,we tabulate the given   volume fractions.Because the mole fraction equals to volume fraction,the values in coloumn 3 are the same as those in coloumn 2.
//The molecular weight is obtained from table 7.1.Because the MW of the mixture is the sum of the individual mole fraction multiplied by the respective molecular      weights,the next coloumn tabulates the product of the mole fraction multiplied by molecular weight(3*4).The sum of these entries is the molecular weight of the    mixture,which for this case is 33.4.
printf("Basis:100 volumes of gas mixture\n\n")
printf("gas    Volume       Mole           Molecular                            mass  \n")
printf("       fraction    fraction x      weight MW     (x)MW                  fraction\n")
printf("CO2    0.40        0.40          44.0           %f               %f\n",(0.40*44.0),(0.40*44.0)/33.4)
printf("N2     0.10        0.10          28.02          %f                %f                \n",(28.02*0.10),(28.02*0.10)/33.4)
printf("H2     0.10        0.10          2.016          %f                %f                \n",(0.10*2.016),(0.10*2.016)/33.4)
printf("O2     0.40        0.40          32.0           %f               %f                \n",(0.40*32.0),(0.40*32.0)/33.4)
printf("       1.00        1.00                         33.4=MWm               = 1.000              \n ")







