//Section-14,Example-5,Page no.-PC.31
//To calculate volume using Ideal gas equation and vander walls equation
clc;
n=3
R=0.0821
T=373
P=50
V_1=((n*R*T)/P)
disp(V_1,'Volume according to Ideal gas equation(L)')
a=1.36
b=0.0318
V_2=((n*R*T)/(P+((a*n^2)/V^2)))
disp(V_2,'Volume according to Vanderwall`s gas equation(L)')


