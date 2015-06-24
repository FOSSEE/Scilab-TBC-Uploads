// Exa 1.26
clc;
clear;
close;
format('v',7)
// Given data
R1 = 10;// in ohm
R2 = 10;// in ohm
R4 = 80;// in ohm
V1= 100;// in V
I2= 0.5;// in A
V2= I2*R4;// in V
// Applying KVL : -R1*I1-V2+V1-R1*I2=0
I1= (V1-V2)/(R1+R2);// in A
V_R1= I1*R1;//voltage across R1 resistor  in V
V_R2= I1*R2;//voltage across R2 resistor  in V
disp(V_R1,"The voltage across R1 resistor in V is : ")
disp(V_R2,"The voltage across R2 resistor in V is : ")
