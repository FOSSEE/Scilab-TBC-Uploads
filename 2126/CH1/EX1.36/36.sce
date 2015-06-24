clc
clear

//Input data
mol=39.9 //Molecular weight of gas in kg/mol
k=1.67 //Adiabatic constant
Po=500 //Pressure in chamber in kPa
To=30+273 //Temperature in chamber in K
P1=80 //Pressure of nozzle at given section in kPa
D=0.012 //Cross section diameter of nozzle in m
Ri=8314 //Ideal gas constant in J/mol-K

//Calculation
R=Ri/mol //Specific gas constant in J/kg-K
p1=Po/P1 //Stagnation to static pressure ratio
M1=sqrt((((p1^((k-1)/k))-1)*2)/(k-1)) //Mach number at section
T1=To*((1+(((k-1)/2)*M1^2))^(-1)) //Temperature at section in K
a=sqrt(k*R*T1) //Sound Velocity in m/s
C1=M1*a //Gas Velocity at section in m/s
d=(P1*10^3)/(R*T1) //Density in kg/m^3
A1=%pi*D^2/4 //Cross-sectional Area 
m=d*A1*C1 //Mass flow rate through nozzle in kg/s

//Output
printf('(A)At section:\n    Mach number is %3.1f\n    Temperature is %3.1f K\n    Velocity is %3.3f m/s\n (B)Mass flow rate through nozzle is %3.3f kg/s',M1,T1,C1,m)
