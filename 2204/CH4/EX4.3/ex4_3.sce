//Exa 4.3
clc;
clear;
close;
// Given data
R1= 12;// in kΩ
R2= 2;// in kΩ
R3= 3;// in kΩ
RF= 12;// in kΩ
V1= 9;// in volt
V2= -3;// in volt
V3= -1;// in volt
Vout= -(RF/R1*V1+RF/R2*V2+RF/R3*V3)
disp(Vout,"The output voltage in volts is : ")
