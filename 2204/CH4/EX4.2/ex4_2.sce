//Exa 4.2
clc;
clear;
close;
// Given data
RF= 100;// in kΩ
Vout= '-(V1+10*V2+100*V3)';// given expression
// Vout= -(RF/R1*V1+RF/R2*V2+RF/R3*V3)
// Comparing the Vout with the given expression
R1= RF;// in kΩ
R2= RF/10;// in kΩ
R3= RF/100;// in kΩ
disp(R1,"The value of R1 in kΩ is : ");
disp(R2,"The value of R2 in kΩ is : ");
disp(R3,"The value of R3 in kΩ is : ");
