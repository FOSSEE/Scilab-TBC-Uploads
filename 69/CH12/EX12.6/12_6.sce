clear; clc; close;

Vcc = 12;

//part a
V_p = 12;
Vceq = Vcc;
Vce_max = Vceq + V_p;
Vce_min = Vceq - V_p;

n = 50*((Vce_max-Vce_min)/(Vce_max+Vce_min))^2;

disp(n,'Efficiency(Percentage) = ');

//part b
V_p = 6;
Vceq = Vcc;
Vce_max = Vceq + V_p;
Vce_min = Vceq - V_p;

n = 50*((Vce_max-Vce_min)/(Vce_max+Vce_min))^2;

disp(n,'Efficiency(Percentage) = ');


//part c
V_p = 8;
Vceq = Vcc;
Vce_max = Vceq + V_p;
Vce_min = Vceq - V_p;

n = 50*((Vce_max-Vce_min)/(Vce_max+Vce_min))^2;

disp(n,'Efficiency(Percentage) = ');
