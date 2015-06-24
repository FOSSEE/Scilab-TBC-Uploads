// Exa 7.3
clc;
clear;
close;
// Given data
bita= 50;
R1= 1;// in kΩ
R1= R1*10^3;//in Ω
R2= 500;// in Ω
R3= 400;// in Ω
R4= 600;// in Ω
V1= 10;// in V
V2= 20;// in V
I_B1=19.2*10^-3;// in A
I_L= 1;//in A
V_Z= 5;// in V
V_B= R4*V1/(R3+R4);//in V
V_BE2= V_B-V_Z;// in V
V_A= V1-V_BE2;// in V
disp(V_A,"The value of V_A in volt is : ")
disp(V_B,"The value of V_B in volt is : ")

// Part (ii)
I1= V1/(R3+R4);// in A
//I1= .01*10^-3;// in A
I2= (V2-V_A)/R2;// in A
//I2= .042;
I_C2= I2-I_B1;// in A
I_B1= (I1+I_L)/(1+bita);// in A
disp(I_B1*10^3,"The base current of T1 in mA is : ")
I_C2= I2-I_B1;// in A
I_E2= I_C2;// in A
disp(I_E2*10^3,"The emitter current of T2 in mA is : ")

// part (iii)
I3= (V2-V_Z)/R1;// in A
I_Z= I3+I_E2;// in A
disp(I_Z*10^3,"Current through zener diode in mA is : ")
V_CE= V2-V1;// in V
I_C1= bita*I_B1;// in A
T1= V_CE*I_C1;// in W
disp(T1,"Power dissipation in watt is : ")

// Note: In the book, the evaluated value of emitter current of T2 i.e. I_E2 and current through zener diode i.e I_Z is wrong because
//          there is a calculation error to evaluate the value of I2 (  (20-9)/500 = 42 mA is wrong, correct value is 22 mA) 









