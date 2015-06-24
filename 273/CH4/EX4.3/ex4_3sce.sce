clc;clear;
//Example 4.3
//electron projected at an angle into a uniform electric field
//given values
v1=4.5*10^5;//initial speed in m/s
alpha=37*%pi/180;//angle of projection in degrees
E=200;//electric field intensity in N/C
e=1.6*10^-19;//in C
m=9.1*10^-31;//in kg
a=e*E/m;//acceleration in m/s^2
t=2*v1*sin(alpha)/a;//time in s
disp(t,'time taken by electron to return to its initial level is:')
H=(v1^2*sin(alpha)*sin(alpha))/(2*a);//height in m
disp(H,'maximum height reached by electron is:')
s=(v1^2)*(2*sin(alpha)*cos(alpha))/(2*a);//displacement in m
disp(s,'horizontal displacement(in m)when it reaches maximum height is:')