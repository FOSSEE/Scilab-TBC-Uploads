//Exa 4.5
clc;
clear;
close;
// Given data
R3= 10;// in kΩ
Vout= '-2*V1+3*V2+4*V3';// given expression or
Vout= '-(2*V1-3*V2-4*V3)';
// Vout= -(RF/R1*V1+RF/R2*V2+RF/R3*V3)
// Comparing the Vout with the given expression, we get
RF= 4*R3;// in kΩ
R2= RF/3;// in kΩ
R1= RF/2;// in kΩ
disp(RF,"The value of RF in kΩ is : ");
disp(R2,"The value of R2 in kΩ is : ");
disp(R1,"The value of R1 in kΩ is : ");
