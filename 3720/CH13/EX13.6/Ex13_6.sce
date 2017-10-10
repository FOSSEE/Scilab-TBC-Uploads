//Example 13_6
clc;clear;
// Given values
b=6;//Width in m
S_0=0.004;// The bottom slope
y=2;// m
g=9.81;// m/s^2
//Properties
n=0.014;// The Manning coefficient
a=1;//The factor a is a dimensional constant in m^(1/3)/s

//Calculation
A_c=y*b;//The cross sectional area in m^2
p=b+(2*y);// Perimeter in m
R_h=A_c/p;// Hydraulic radius in m
V=(a/n)*A_c*R_h^(2/3)*S_0^(1/2);
printf('The flow rate,V=%0.1f m^3/s\n',V);
// y=y_n=2 m
y_c=V^2/(g*A_c^2);
disp("This channel at these flow conditions is classified as STEEP since y_n <y_c ,and the flow is supercritical.")
