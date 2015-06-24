//Exa 4.1
clc;
clear;
close;
// Given data
R1= 1;// in kΩ
R2= 1;// in kΩ
R3= 1;// in kΩ
RF= 1;// in kΩ
Vin1= 2;// in volt
Vin2= 1;// in volt
Vin3= 4;// in volt
Vout= -(RF/R1*Vin1+RF/R2*Vin2+RF/R3*Vin3)
disp(Vout,"The output voltage in volts is : ")
