//Exa 4.6
clc;
clear;
close;
// Given data
V1= 2;// in V
V2= -1;// in V
R=10;// assuming value in kΩ
R1=R;// in kΩ
R2= R;// in kΩ
R3= R;// in kΩ
R4= R;// in kΩ
RF= 2*R;// in kΩ
Vin1= V1*(R1*R2/(R1+R2))/(R1+(R2*R3/(R2+R3)));// in V
Vout1= Vin1*(1+RF/R1);// in V
Vin2= V2*(R3*R4/(R3+R4))/(R2+(R3*R4/(R3+R4)));// in V
Vout2= Vin2*(1+RF/R2);// in V
Vout= Vout1+Vout2;// in V
disp(Vout,"The output voltage in volts is : ")
