clear;
clc;

//page no.103

d = 4;//feet
theta = 30;// degrees
p_C = 5;// psi
p_A = p_C-(62.4/144)*cos(theta*%pi/180) *2;
p_B = p_C+(62.4/144)*cos(theta*%pi/180) *2;
h = p_C*144/62.4;
printf('The static pressures at A and B are %.2f psi and %.2f psi respectively.',p_A,p_B);
printf('\n The hydraulic grade line is %.2f ft (vertically) above C,',h);
