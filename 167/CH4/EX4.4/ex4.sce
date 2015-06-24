//ques4
//Expansion of a Gas against a spring
clear
clc
V1=0.05//initial volume in m^3
V2=2*V1//final volume in m^3
A=0.25//area of cross section in m^2
k=150//spring constant in kN/m
//(a)
x=(V2-V1)/A//displacement of piston in m
F=k*x//Spring force  in kN
P1=F/A//pressure in kPa due to piston
Po=200//initial pressure in kPa
P=P1+Po;//final pressure in kPa
printf('\n(a) Final pressure = %.0f kPa\n',P);
//(b)
w=(Po+P)/2*(V2-V1);//in kJ
printf('(b) Work done = %.0f kJ\n',w);
//(c)
wspring=(P-Po)/2*V1;
printf('(c) Fraction of work done by spring = %.0f kJ\n',wspring);
