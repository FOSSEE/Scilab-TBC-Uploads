//example 16.6
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
h=100;//W/m^2/K
P=pi*0.005;
k=398;
Ac=pi/4*0.005^2;
thetab=100-25;
qf=(h*P*k*Ac)^0.5*thetab;
disp(qf,"heat rate in copper rod in W");
L=2.65*(k*Ac/h/P)^0.5*1000;
disp(L,"minimum value of the length in mm");
clear()
