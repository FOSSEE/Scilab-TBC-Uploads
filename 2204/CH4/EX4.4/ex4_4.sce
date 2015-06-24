//Exa 4.4
clc;
clear;
close;
// Given data
RF= 6;// in kΩ
Vout= '-V1+2*V2-3*V3';// given expression or
Vout= '-(V1-2*V2+3*V3)';
// Vout= -(RF/R1*V1+RF/R2*V2+RF/R3*V3)
// Comparing the Vout with the given expression
R1= RF;// in kΩ
R2= RF/2;// in kΩ
R3= RF/3;// in kΩ
disp(R1,"The value of R1 in kΩ is : ");
disp(R2,"The value of R2 in kΩ is : ");
disp(R3,"The value of R3 in kΩ is : ");
