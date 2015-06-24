//example 18.4
clc; funcprot(0);
// Initialization of Variable
F1=0.318;//F0---2 mum
F2=0.856;//F0---5 mum
sigma=5.67e-8;
T=1600;//kelvin
epsilon=0.4*F1+0.8*(F2-F1);
disp(epsilon,"emmisivity");
E=epsilon*sigma*T^4;
disp(E/1000,"total emmisive power in kW/m^2");
clear()
