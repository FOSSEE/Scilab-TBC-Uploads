//Example 1_44
clc();
clear;
//To find the refractive index of the transparent sheet
lemda=5460*10^-8                  //units in cm
t=6.3*10^-4                      //units in cm
n=6
u=(n*lemda)/t+1
printf("The refractive index of the transparent sheet is %.2f",u)
