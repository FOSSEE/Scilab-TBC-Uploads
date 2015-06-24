// Example 4.2
clc;
clear;
close;
// Given data
format('v',6);
Rf= 12;// in kΩ
R1= 12;// in kΩ
R2= 2;// in kΩ
R3= 3;// in kΩ
V1= 9;// in V
V2= -3;// in V
V3= -1;// in V
Vout= -Rf*(V1/R1+V2/R2+V3/R3);// output voltage in V
disp(Vout,"The output voltage in volts is : ");



