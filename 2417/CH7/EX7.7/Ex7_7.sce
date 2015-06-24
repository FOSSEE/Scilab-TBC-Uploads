//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.7\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.7  (page no. 328) 
// Solution

//We will take as a basis 100 lbm of mixture.
//Dividing colomn 2 by 3 gives us mass/molecular weight  or moles of each constituents.The total number of moles in the mixture is the sum of coloumn 4,and the      molecular weight of the mixture is the mass of the mixture(100 lbm) divided by the number of moles
//In coloumn 5,mole fraction is given by moles/total mole

printf("Basis:100 pounds of gas mixture\n\n")
printf("gas    Mass        Molecular      Moles                   Mole         Percent      \n")
printf("        lbm        weight MW                           fraction        Volume        \n")
printf("CO2    52.7          44.0          1.2                   %f             %f   \n",(1.2/3),(1.2/3)*100)
printf("N2      8.4          28.02         0.3                   %f             %f   \n",(0.3/3),(0.3/3)*100)
printf("H2      0.6          2.016         0.3                   %f             %f   \n",(0.3/3),(0.3/3)*100)
printf("O2     38.3          32.0          1.2                   %f             %f   \n",(1.2/3),(1.2/3)*100)
printf("       =100.0                     =3.0                 =1.00               = 100              \n ")
printf("                              MWm=100/3=33.3               ")

