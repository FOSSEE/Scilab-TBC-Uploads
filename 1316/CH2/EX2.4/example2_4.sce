//Chapter 2
//Example 2.4
//Page 60

clear;
clc;

R1 = 120;
R2 = 120;
R3 = 120;
R4 = 121;
V=10;
printf("Assuming detector impedance to be very high , we find the offset as \n")
//Calculation of Delta Vd
Del_Vd = V*(((R3*R2)-(R1*R4))/((R1+R3)*(R2+R4)))
printf("Delta Vd = %f V",Del_Vd)


