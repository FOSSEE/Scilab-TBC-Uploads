// Exa 3.15
clc;
clear;
close;
format('v',6)
// Given data
A= 2*10;// area under curve for a cycle
B= 2;// base of half cycle
Vav= 1/2*A/B;// in V
// For line AB
y1= 0;
y2= 10;
x1= 0;
x2= 1;
m_for_AB= (y2-y1)/(x2-x1);
// For line BC
y1= 10;
y2= 0;
x1= 1;
x2= 2;
m_for_BC= (y2-y1)/(x2-x1);
Vrms= sqrt((integrate('(m_for_AB*t)^2','t',0,1)+integrate('(m_for_BC*t+20)^2','t',1,2))/2);// in V
kf= Vrms/Vav;
disp(kf,"The form factor is : ")
