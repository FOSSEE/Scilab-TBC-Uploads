clear;
clc;
b = 10;//inches
d = 1;//inches
h = 20;//inches
r = 2;//inches
M_r = 500000;//lb-inches
m = 15;
A_r = 4*0.25*%pi*d^2;//in^2
h_eff = h-r;//inches
K = m*A_r/(b*h_eff);//inches
n1 = sqrt((K)^2+(2*K))-K;
n = n1*h_eff;//inches
a = h_eff-(n/3);//inches
c = 2*M_r/(b*n*a);//lb/in^2
t = (h_eff-n)*m*c/n;//lb/in^2
printf('The stress induced in the concrete and steel, t = %d lb/in^2',t);

//there is a minute error in the answer given in textbook.
