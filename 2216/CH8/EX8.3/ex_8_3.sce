//Example 8.3: The quantum efficiency and The responsivity of the diode
clc;
clear;
close;
//given data :
format('v',5)
disp("part (a)")
e=2*10^10;// in s^-1
p=5*10^10;// in s^-1
eta=e/p;
disp(eta,"The quantum efficiency  = ")
disp("part (b)")
e=2*10^10;// in s^-1
p=5*10^10;// in s^-1
eta=e/p;
e=1.6*10^-19;// in J
h=6.626*10^-34;//in Js
c=3*10^8;// in m s^-1
lamda=0.90*10^-6;// in m
R=(eta*e*lamda)/(h*c);
disp(R,"The responsivity of the diode,R(AW^-1) = ")
