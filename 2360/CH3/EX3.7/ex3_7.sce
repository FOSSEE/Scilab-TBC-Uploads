// Exa 3.7
format('v',7);clc;clear;close;
// Given data
I1 = 10;// in A
Im = 1*10^-3;// in A
Rm = 50;// in ohm
I2 = 5;// in A
I3 = 1;// in A
// I1*R1= Im*(R2+R3+Rm) or I1*R1 - Im*R2 - Im*R3 = Im*Rm       (i)
// I2*(R1+R2) = Im*(R3+Rm) or I2*R1 + I2*R2 - Im*R3 = Im*Rm     (ii)
// I3*(R1+R2+R3) = Im*Rm or I3*R1 + I3*R2 + I3*R3 = Im*Rm           (iii)
// Solving eq (i),(ii) and (iii) by matrix method : 
A= [I1 I2 I3;-Im I2 I3;-Im -Im I3];
B= [Im*Rm Im*Rm Im*Rm];
R= B*A^-1;
R1= R(1);//value of R1 in ohm
R2= R(2);//value of R2 in ohm
R3= R(3);//value of R3 in ohm
disp(R1,"The value of R1 in ohm is : ")
disp(R2,"The value of R2 in ohm is : ")
disp(R3,"The value of R3 in ohm is : ")

