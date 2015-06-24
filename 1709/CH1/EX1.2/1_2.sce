clc
//Initialization of variables
V=4 //in^3
P=30 //psia
T=500//R
MW=32
//calculations
disp("Metric unit conversion,")
V=V*2.54^3 *10^-3
P=30*4.448/(2.54^2 *10^-4)
T=5*(T-32)/9 +273
n=P*V/(8314.5*T)
eta=n*1000
N=eta*6.025*10^23
m=eta*MW
//results
printf("No. of molecules of oxygen = %.3e molecules",N)
printf("\n Mass of molecules = %.1f g",m)
//The answer in the textbook is a bit different due to rounding off error
