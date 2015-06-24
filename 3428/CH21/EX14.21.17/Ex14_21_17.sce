//Section-14,Example-4,Page no.-PC.31
//To calculate pressure using ideal gas equation and vanderwall`s gas equation.
clc;
n=12
R=0.0821
T=298
V=10.0
P_1=((n*R*T)/V)
disp(P_1,'Pressure from ideal gas equation(atm)')
a=1.49
b=0.0399
P_2=(((n*R*T)/(V-(n*b)))-((a*n^2)/(V^2)))
disp(P_2,'Pressure from Vander walls gas equation(atm)')

