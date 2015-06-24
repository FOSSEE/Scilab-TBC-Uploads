clc
//Chapter3
//Ex_11
//Given
h_bar=1.054*10^-34 // in J s
m=100// in Kg
g=10 // in m/s2
h=10 // in m
h1=15 // in m
a=10 // in m
E=m*g*h //total energy of carriage
Vo=m*g*h1 // PE required to reach the peak 
alpha=sqrt(2*m*(Vo-E)/h_bar^2)
To=16*E*(Vo-E)/Vo^2
T=To*exp(-2*alpha*a)
disp(T, "Transmission probability is")
//clculation using h_bar=10 KJs
h_bar=10*10^3 //Js
alpha=sqrt(2*m*(Vo-E)/h_bar^2)
D=Vo^2/(4*E*(Vo-E))
T=(1+(sinh(alpha*a))^2)^-1
disp(T,"transmission probability in a universe where h_bar is 10KJs is")
