//Example 2_4
clc();
clear;
//To calculate the total number of lines for the first order
lemda=5890                            //units in angstrom
lemda=5890*10^-8                     //units in centimeters
dlemda=6*10^-8                      //units in centimeters
k=1
N=lemda/(k*dlemda)
printf("Total no. of lines for the first order is %.0f",N)
//To calculate the total number of lines for the second order
k=2
N=lemda/(k*dlemda)
printf("\nTotal no. of lines for the second order is %.0f",N)
