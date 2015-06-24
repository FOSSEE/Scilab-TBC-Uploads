clc
clear

//Input data
T=40+273 //Temperature in K
p1=0.5 //Static to Stagnation pressure ratio
k=1.67 //Adiabatic constant
Ri=8314 //Ideal gas constant in J/mol-K
Mol=39.94 //Molecular weight of argon in kg/mol

//Calculation
R=Ri/Mol //Specific gas constant in J/kg-K
p2=1/p1 //Pressure ratio
M=sqrt(((p2^((k-1)/k)-1)*2)/(k-1)) //Mach number 
C=M*sqrt(k*R*T) //Velocity in the flow in m/s

//Output 
printf('(A)Mach number is %3.3f\n (B)Velocity in the flow is %3.1f m/s',M,C)
