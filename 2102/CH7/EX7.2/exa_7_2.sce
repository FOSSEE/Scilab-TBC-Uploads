// Exa 7.2
clc;
clear;
close;
// Given data
bita= 100;
R1= 1;// in kΩ
R1= R1*10^3;//in Ω
R2= 300;// in Ω
R3= 360;// in Ω
R4= 640;// in Ω
V1= 10;// in V
V2= 20;// in V
I_B1=19.2*10^-3;// in A
I_L= 1;//in A
V_Z= 5.6;// in V
V_B= R4*V1/(R3+R4);//in V
V_BE2= V_B-V_Z;// in V
V_A= V1-V_BE2;// in V
disp(V_A,"The value of V_A in volt is : ")
disp(V_B,"The value of V_B in volt is : ")

// Part (ii)
I1= V1/(R3+R4);// in A
//I1= .01*10^-3;// in A
I2= (V2-V_A)/R2;// in A
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

// Note: In the part (iv), the wrong value of I_B1 and bita is putted, these two value is putted of the Example 7.1
//          (i.e. I_B1= 19.8 mA and bita= 50) whereas in this example the value of bita is given 100 and the value of 
//          of I_B1 is calculated as 10 mA. So the answer of the last part of this example is wrong.






