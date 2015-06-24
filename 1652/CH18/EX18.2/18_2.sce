clc
//Initialization of variables
Vm=2.86 //cc/g
P=1 //atm
R=82.06 //cm^3 atm/deg mol
T=273.2 //deg
N=6.023*10^23
sigma=16.2*10^-16 //cm^2 /molecule
//calculations
n=P*Vm/(R*T)
A=N*n*sigma
//results
printf("total area = %.2e cm^2 (g catalyst)^-1",A)
