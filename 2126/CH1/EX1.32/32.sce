clc
clear

//Input data
A1=465.125 //Cross sectional area at entry in cm^2
T1=26.66+273 //Static temperature at section-1 in K
P1=3.4473 //Static Pressure at section-1 in bar
C1=152.5 //Velocity at section-1 in m/s
P2=2.06838 //Static Pressure at section-2 in bar
T2=277.44 //Static temperature at section-2 in K
C2=260.775 //Velocity at section-2 in m/s
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-k

//Calculations
To1=T1+(C1^2/(2*Cp)) //Stagnation temperature at entry in K
To2=T2+(C2^2/(2*Cp)) //Stagnation temperature at exit in K
//here To1=To2 from answers
d1=(P1*10^5)/(R*T1) //Density at section-1
d2=(P2*10^5)/(R*T2) //Density at section-2
ar=(d2*C2)/(d1*C1) //Ratio of inlet to outlet area
A2=A1/ar //Cross sectional area at exit in cm^2
C_max=sqrt(2*Cp*To1) //Maximum velocity at exit in m/s
m=d1*A1*C1*10^-4 //Mass flow rate in kg/s 
F=((P1*10^5*A1*10^-4)-(P2*10^5*A2*10^-4))+(m*(C1-C2)) //Force acting on the duct wall between two sections in N

//Output
printf('(A)Maximum velocity and stagnation temperature at exit are %3.2f m/s and %3.2f K\n (B)Since Stagnation temperature %3i K at entry and %3i K at exit are equal, the flow is adiabatic\n (C)Cross sectional area at exit is %3.2f cm^2\n (D)Force acting on the duct wall between two sections is %3.2f N',C_max,To2,To1,To2,A2,F)
