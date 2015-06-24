// Exa 8.14
clc;
clear;
close;
// Given data
Rf = 250;// in kohm
Vo= '-5*Va+3*Vb';// given expression
// But output voltage of difference amplifier is 
// Vo= -Rf/R1*Va+(R2/(R1+R2))*(1+Rf/R1)*Vb      (i)
// By comparing (i) with given expression
R1 = Rf/5;// in kohm
disp(R1,"The value of R1 in kΩ is : ");
// (R2/(R1+R2))*(1+Rf/R1)= 3
R2= 3*R1^2/(R1+Rf-3*R1);// in kΩ
disp(R2,"The value of R2 in kΩ is : ")

// Note: There is calculation error to find the value of R2 in the book.
