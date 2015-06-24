clear; clc; close;

v1 = ["*sin(1000t)"];
v2 = ["*sin(3000t)"];

Vo = strcat([string(-(330*10^3)/(33*10^3)*50*10^(-3)),v1,string(-(330*10^3)/(10*10^3)*10^(-3)),v2]);

disp(Vo,'Output voltage(Volts) = ');
