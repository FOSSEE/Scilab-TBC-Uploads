//Exa 6.28
format('v',6)
clc;
clear;
close;
// Given data
Beta= 100;
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
V_BEact= 0.7;// in V
V_CC = 10;// in V
R_E = 1;// in kΩ
R_C = 2;// in kΩ
R_B= 100;// in kΩ
Beta=100;
alpha= Beta/(1+Beta);
// Applying KVL to collector circuit
// V_CC= I_Csat*R_C +V_CE +R_E*I_E
// but I_E= alpha*I_Csat
I_Csat= (V_CC-V_CEsat)/(R_C+R_E*alpha);// in mA
I_Bmin= I_Csat/Beta;// in mA
// Applying KVL to base loop
// V_CC= I_B*R_B +V_BEsat +I_E*R_E
// but I_E= I_Csat+I_B
I_B= (V_CC-V_BEsat-I_Csat*R_E)/(R_B+R_E);// in mA
I_B=I_B*10^3;// in µA
disp(I_B,"The value of I_B in µA is : ")
I_B=I_B*10^-3;// in mA
I_Bmin= I_Bmin*10^3;// in µA
disp(I_Bmin,"The minimum value of I_B in µA is : ")
I_Bmin= I_Bmin*10^-3;// in mA
if I_B>I_Bmin then
    disp("Since the value of I_B is greater than the value of I_Bmin, ")
    disp("Hence the transistor is in saturation .")
end
// The emitter current,
I_E= (1+Beta)*I_Bmin;// in mA
// The value of R_E
R_E= (V_CC-V_BEact-I_Bmin*R_B)/I_E;// in kΩ
disp(R_E,"The value of R_E in kΩ is : ")
disp("So R_E should be greater than this value in order to bring the transistor just out of saturation ")

