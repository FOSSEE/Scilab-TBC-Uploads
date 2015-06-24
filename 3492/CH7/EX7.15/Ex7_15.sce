clc
//Chapter7
//Ex_15
//Given
P=380*10^-6 //in C/m2/K
c=380//in J/Kg/K
//let epsilon=E
Eo=8.85*10^-12 //in F/m
Er=290
rho=7000//in Kg/m3
delta_V=0.001 //in V
delta_t=0.2 //in seconds
I=(P/(rho*c*Eo*Er))^-1*delta_V/delta_t
disp(I,"Minimum radiation intensity that can be measured in W/m2 is")
