//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.8\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.8  (page no. 329) 
// Solution

//We will take as a basis 100 lbm of mixture.
//Dividing colomn 2 by 3 gives us mass/molecular weight  or moles of each constituents.The total number of moles in the mixture is the sum of coloumn 4,and the      molecular weight of the mixture is the mass of the mixture(100 lbm) divided by the number of moles
//In coloumn 5,mole fraction is given by moles/total mole

printf("Basis:100 pounds of gas mixture\n\n")
printf("gas    Mass        Molecular      Moles                   Mole         Percent      \n")
printf("        lbm        weight MW                           fraction        Volume        \n")
printf("O2     23.18         32.00         0.724                   %f             %f   \n",(0.724/3.45),(0.724/3.45)*100)
printf("N2     75.47         28.02         2.693                   %f             %f   \n",(2.692/3.45),(2.692/3.45)*100)
printf("A       1.30         39.90         0.033                   %f             %f   \n",(0.033/3.45),(0.033/3.45)*100)
printf("CO2     0.05         44.00          -                       -             -  \n")
printf("       =100.00                     =3.45                 =1.00               = 100              \n ")
printf("                            MWm=100/3.45=28.99               ")
