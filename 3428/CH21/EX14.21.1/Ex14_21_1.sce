//Section-14,Example-1,Page no.-PC.7
//To find the temperature at which  pressure of gas will reach the bursting  value.
clc;
//PV=nRT
P=10
V=(10^-3)*(1/10^-3)
n=((5*10^-3)/30)
R=0.0821
T=((P*V)/(n*R))
disp(T,'Required temperature(K)')
 
