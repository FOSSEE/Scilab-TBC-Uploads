clc
clear

//Input data
To=27+273 //Stagnation temperature in K
Po=8 //Stagnation Pressure in bar
P=5.6 //Static pressure in bar, taken from diagram given
m=2 //Mass flow rate in kg/s
k=1.4 //Adiabaatic constant
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
R=287 //Specific gas constant in J/kg-k

//Calculation
T=To*(P/Po)^((k-1)/k) //Static temperature in K
a=sqrt(k*R*T) //Sound velocity in m/s
C=sqrt(2*Cp*(To-T)) //Velocity in m/s
M=C/a //Mach number
A=((m*R*T)/(P*10^5*C))*10^4 //Area at a point in the channal in cm^2

//Output
printf('(A)Mach number is %3.4f\n (B)Velocity is %3.1f m/s\n (C)Area at a point in the channal is %3.3f cm^2',M,C,A)
