// Exa 1.13
format('v',7);
clc;
clear;
close;
// Given data
Rf= 250;// in kohm
// Output voltage expression, Vo= -5*Va+3*Vb
// and we know that for a difference amplifier circuit, 
// Vo= -Rf/R1*Va + [R2/(R1+R2)]*[1+Rf/R1]*Vb
// Comparing both the expression, we get
// -Rf/R1*Va= -5*Va, or
R1= Rf/5;// in kohm
disp(R1,"The value of R1 in kohm")
// and 
R2= 3*R1^2/(R1+Rf-3*R1)
disp(R2,"The value of R2 in kohm")

// Note : Answer in the book is wrong
