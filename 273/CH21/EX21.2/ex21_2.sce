clc;clear;
//Example 21.2
//calculation of magnetization and magnetic flux density

//given values
H=10^5;//external field  in A/m
X=5*10^-5;//susceptibility 
u=12.57*10^-7;//permeability in H/m

//calculation
M=X*H;
disp(M,'magnetization (in A/m)is ');
B=u*(M+H);
disp(B,'magnetic flux density (in wb/m^2) is')
