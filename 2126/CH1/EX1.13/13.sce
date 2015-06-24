clc
clear

//Input data
P=96 //Pressure in kPa
T=27+273 //Temperature in K
dP=32 //Difference between pivot and static pressure
k=1.4 //Adiabatic Constant
R=287 //Specific Gas constant in J/kg-K

//Calculation
d=(P*10^3)/(R*T) //Density in kg/m^3
Ci=sqrt((2*(dP*10^3))/d) //Velocity of incompressible flow in m/s
pr=(dP)/P //Pressure ratio
p1=pr+1 //Stagnation to static pressure ratio
M=sqrt(((p1^((k-1)/k)-1)*2)/(k-1)) //Mach number
Cc=M*sqrt(k*R*T) //Velocity of compressible flow in m/s

//Output
printf('(A)Air velocity in incompressible flow is %3.1f m/s\n (B)Air velocity if flow is compressible is %3.3f m/s',Ci,Cc)
