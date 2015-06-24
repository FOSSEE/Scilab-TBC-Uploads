clc
//Chapter3
//Ex_10
//Given
h_bar=1.054*10^-34 // in J s
m=9.1*10^-31 //in Kg
e=1.6*10^-19 // in coulombs
Vo=10 //in ev
Vo=Vo*e //in J
E=7 // in eV
E=E*e // in J
a=5*10^-9 // in m
alpha=sqrt(2*m*(Vo-E)/h_bar^2)
To=16*E*(Vo-E)/Vo^2
T=To*exp(-2*alpha*a)
disp(T,"Transmission coefficient of condution electrons in copper is")
a=1*10^-9 // in m
T=To*exp(-2*alpha*a)
disp(T,"Transmission coefficient if the oxide barrier is 1 nm is")
// slight change in the answer due to approximations in alpha value
