//Exa 4.7
clc;
clear;
close;
// Given data
Eta = 1;
V_T = 26;// in mV
V_T= V_T*10^-3;// in V
// I = I_o * (%e^(V/(Eta*V_T)) - 1) and I = -(0.9) * I_o;
V= log(1-0.9)*V_T;// in V
disp(V,"The voltage in volts is : ")
// Part (ii)
V1=0.05;// in V
V2= -0.05;// in V
ratio= (%e^(V1/(Eta*V_T))-1)/(%e^(V2/(Eta*V_T))-1)
disp(ratio,"The ratio of the current for a forward bias to reverse bias is : ")
// Part (iii)
Io= 10;// in µA
Io=Io*10^-3;// in mA
//For 
V=0.1;// in V
I = Io * (%e^(V/(Eta*V_T)) - 1);// in mA
disp(I,"For v=0.1 V , the value of I in mA is : ")
//For 
V=0.2;// in V
I = Io * (%e^(V/(Eta*V_T)) - 1);// in mA
disp(I,"For v=0.2 V , the value of I in mA is : ")
//For 
V=0.3;// in V
I = Io * (%e^(V/(Eta*V_T)) - 1);// in mA
disp(I*10^-3,"For v=0.3 V , the value of I in A is : ")
disp("From three value of I, for small rise in forward voltage, the diode current increase rapidly")
