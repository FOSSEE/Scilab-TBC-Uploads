//Example 1_15
clc();
clear;
//To find the diameter of the 5th bright ring
n=5
lemda=5460                    //units in angstroam
lemda=5460*10^-8              //units in cm
u=1.50
f=400                        //units in cm
R=(u-1)*2*f
D=sqrt(2*(2*n-1)*lemda*R)
printf("The diameter of the 5th fringe %.2f mts",D)
