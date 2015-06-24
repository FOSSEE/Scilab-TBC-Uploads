// Exa 3.21
format('v',7);
clc;
clear;
close;
// Given data 
// Part (a)
V_C= 2;// in V
R_C= 1;// in kΩ
R_C=R_C*10^3;// in Ω
V_B= 4.3;// in V
R_B= 200;// in kΩ
R_B=R_B*10^3;// in Ω
I_C= V_C/R_C;// in A
I_B= V_B/R_B;// in A
Beta= I_C/I_B;
disp("Part (a)")
disp(I_C*10^3,"Collector current in mA is : ")
disp(I_B*10^6,"Base current in µA is : ")
disp(Beta,"The value of Beta is : ")

// Part (b)
V_C= 2.3;// in V
R_C= 230;// in kΩ
R_C=R_C*10^3;// in Ω
V_B= 4.3;// in V
R_B= 20;// in kΩ
R_B=R_B*10^3;// in Ω
I= V_C/R_C;// current through 230Ω resistro i.e. I_C + I_B in A
I_B= (V_B-V_C)/R_B;// in A
I_C= I-I_B;// in A
Beta= abs(I_C/I_B);
disp("Part (b)")
disp(I_C*10^3,"Collector current in mA is : ")
disp(I_B*10^3,"Base current in mA is : ")
disp(Beta,"The value of Beta is : ")

// Part (c)
V_E= 10;// in V
R_E= 1;// in kΩ
R_E=R_E*10^3;// in Ω
V_1= 7;// in V
R_C= 1;// in kΩ
R_C=R_C*10^3;// in Ω
V_B= 6.3;// in V
R_B= 100;// in kΩ
R_B=R_B*10^3;// in Ω
I_E= (V_E-V_1)/R_C;//in A
I_C=I_E;// in A (approx)
V_C= I_C*R_C;// in V
I_B= (V_B-V_C)/R_B;// in A
Beta= I_E/I_B-1;
disp("Part (c)")
disp(I_E*10^3,"Emitter current in mA is : ")
disp(I_B*10^6,"Base current in µA is : ")
disp(V_C,"Collector voltage in volts is : ")
disp(Beta,"The value of Beta is : ")

// Note : In the book the value of base current in the first part is wrong due to calculation error.
//           In the part (b) the values of collector current and Beta are wrong due to calculation error in the first line of part (b)
