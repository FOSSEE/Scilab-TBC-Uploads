clc
clear

//Input data
P1=250 //Static Pressure at section-1 in kPa
T1=26+273 //Static temperature at section-1 in K
M1=1.4 //Mach number at entry
M2=2.5 //Mach number at exit
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-k

//Calculation
C1=sqrt(k*R*T1)*M1 //Air velocity at entry in m/s 
To=T1*(1+(((k-1)/2)*M1^2)) //Stagnation temperature in K
t1=(1+(((k-1)/2)*M2^2)) //Stagnation to exit Temperature ratio
T2=To/t1 //Exit temperature in K
C2=sqrt(k*R*T2)*M2 //Air velocity at exit in m/s 
P2=P1*(T2/T1)^(k/(k-1)) //Exit static pressure in kPa
d2=(P2*10^3)/(R*T2) //Density at section-2 in kg/m^3
G=d2*C2 //)Mass flow rate through the duct per square metre in kg/s-m^2

//Output
printf('(A)At second section:\n    Temperature is %3.2f K\n    Pressure is %3.2f kPa\n    Velocity is %3.4f m/s\n (B)Mass flow rate through the duct per square metre is %3.1f kg/s-m^2',T2,P2,C2,G)
