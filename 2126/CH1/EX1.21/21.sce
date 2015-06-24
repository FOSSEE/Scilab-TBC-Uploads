clc
clear

//Input data
Z1=0 //Height from sea level in m
Z2=11 //Height from sea level in m
T1=288 //Temperature @Z1 in K, from gas tables
T2=216.5 //Temperature @Z2 in K, from gas tables
C=1000*(5/18) //Velocity in m/s
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-k

//Calculation
a1=sqrt(k*R*T1) //Sound velocity @Z1 in m/s
M1=C/a1 //Mach number @Z1
a2=sqrt(k*R*T2) //Sound velocity @Z2 in m/s
M2=C/a2 //Mach number @Z2

//Output
printf('(A)Speed of sound at:\n    sea level is %3.2f\n    an altitude of %3i km is %3.2f m/s\n (B)Mach numbeer at:\n    sea level is %3.2f\n    an altitude of %3i km is %3.2f',a1,Z2,a2,M1,Z2,M2)
