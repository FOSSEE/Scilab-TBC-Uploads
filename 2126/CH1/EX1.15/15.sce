clc
clear

//Input data
Po=300 //Pressure in the vessel in kPa
To=50+273 //Temperature in vessel in K
M=1 //Mach number 
k=1.667 //Adiabatic constant
Ri=8314 //Ideal gas constant in J/mol-K
Mol=4 //Molecular weight of helium in kg/mol

//Calculation
R=Ri/Mol //Specific gas constant in J/kg-K
Cp=(k*R)/(k-1) //Specific heat capacity at constant pressure in J/kg-K
p1=(2/(k+1))^(k/(k-1)) //Pressure ratio
Pt=Po*p1 //Pressure at test condition in kPa
t1=(2/(k+1)) //Temperature ratio 
Tt=To*t1 //Temperature at test condition in K
at=sqrt(k*R*Tt) //Velocity of sound in m/s
Ct=at //Velocity of gas at test condition in m/s
Cmax=sqrt(2*Cp*To) //Maximum velocity due to expanding of gases through nozzle system in m/s

//Output
printf('(A)At test point:\n    Pressure is %3.2f kPa\n    Temperature is %3.2f K\n    Velocity is %3.1f m/s\n (B)Maximum velocity due to expanding of gases through nozzle system is %3.2f m/s',Pt,Tt,Ct,Cmax)
