//Exa 5.14.11
clc;
clear;
close;
// Given data
bita= 100;
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
V_BEact= 0.7;// in V
V_CC = 10;// in V
R_E = 1;// in kΩ
R_C = 2;// in kΩ
R_B= 100;// in kΩ
bita=100;
alpha= bita/(1+bita);
// Applying KVL to collector circuit
// V_CC= I_Csat*R_C +V_CE +R_E*I_E
// but I_E= alpha*I_Csat
I_Csat= (V_CC-V_CEsat)/(R_C+R_E*alpha);// in mA
I_Bmin= I_Csat/bita;// in mA
// Applying KVL to base loop
// V_CC= I_B*R_B +V_BEsat +I_E*R_E
// but I_E= I_Csat+I_B
I_B= (V_CC-V_BEsat-I_Csat*R_E)/(R_B+R_E);// in mA
disp(I_B*10^3,"The value of I_B in µA is : ")
disp(I_Bmin*10^3,"The minimum value of I_B in µA is : ")
if I_B>I_Bmin then
    disp("Since the value of I_B is greater than the value of I_Bmin, ")
    disp("Hence the transistor is in saturation .")
end
I_E= (1+bita)*I_Bmin;// in mA
R_E= (V_CC-V_BEact-I_Bmin*R_B)/I_E;// in kΩ
disp(R_E,"The value of R_E in kΩ is : ")
disp("So R_E should be greater than this value in order to bring the transistor just out of saturation ")

