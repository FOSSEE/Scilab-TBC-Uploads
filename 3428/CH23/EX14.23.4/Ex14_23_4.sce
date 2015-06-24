//Section-14,Example-2,Page no.-PC.75
//To calculate equilibrium composition of reaction mixture
clc;
a_N2=1.00-x
a_H2=3.00-(3*x)
a_NH_3=2*x
//K=(2*x^2)/((1.00-x)*(3.00-3*x)^3)=977
x_1=(163.416+sqrt((163.416)^2-(4*81.208*81.208)))/(2*81.208)
x_2=(163.416-sqrt((163.416)^2-(4*81.208*81.208)))/(2*81.208)
p_N2=1-x_2
p_H2=3*(1-x_2)
p_NH3=2*x_2
