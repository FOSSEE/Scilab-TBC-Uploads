// Exa 3.23
clc;
clear;
close;
// Given data 
VBE= 0.7;// in V
VCC= 9;// in V
VCE= -9;// in V
V_B= -1.5;// in V
R_C= 10;// in kΩ
R_C=R_C*10^3;// in Ω
R_B= 10;// in kΩ
R_B=R_B*10^3;// in Ω
I_B=  abs(V_B)/R_B;// in A
V_E= V_B-VBE;// in V
disp(V_E,"The value of V_E in volt is : ")
I_E= (V_E-VCE)/R_B;// in A
bita= I_E/I_B-1;
alpha= bita/(1+bita);
disp(alpha,"The value of alpha in volt is : ")
disp(bita,"The value of bita in volt is : ")
V_C= VCC-I_E*alpha*R_C;// in V
disp(V_C,"The value of V_C in volt is : ")
// When bita = infinite then
alpha= 1 ;// As infinite/(1+infinite) = 1
I_B= 0;
V_B=0;
V_C= VCC-I_E*R_C;// in volt
disp("When Bita =  infinite then :-")
disp(V_B,"The value of V_B in volt is : ")
disp(V_E,"The value of V_E in volt is : ")
disp(V_C,"The value of V_C in volt is : ")
