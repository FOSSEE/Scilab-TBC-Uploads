// Example 4.4
clc;
clear;
close;
// Given data
format('v',6);
Vout= '(-2*V1+3*V2+4*V3)';//given expression  
R3= 10;// in kΩ
// Vout=  -(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3)     (i)
// Compare equation(i) with given expression
Rf= 4*R3;//in kΩ
R2= Rf/3;// in kΩ
R1= Rf/2;// in kΩ
disp(Rf,"The value of Rf in kΩ is : ");
disp(R2,"The value of R2 in kΩ is : ");
disp(R1,"The value of R1 in kΩ is : ");



