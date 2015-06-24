clear
clc
h=3.9;//height in mm
rho=1.0;//density of solution
g=980.7;//acceleration due to gravity in cm/s^2
P=((h/10)*rho*g);//osmotic pressure in gm/(cms^2)
V=1000;//volume in cm^3
T=25;//temperatur in C
w2=1;//weight of serum albumin
R=8.314;//in J/Kmol
M2=(w2*(R*10^7)*(T+273))/(P*V);//molar mass of serum albumin
printf('M2=%.3f *10^4 g/mol',M2/10^4)

//The above result is in CGS units

//The following results are in SI units
p=(P/10);//osmotic pressure in N/m^2
m2=(M2/10^3);//molar mass of serum albumin
printf('\nm2=%.2f Kg/mol',m2)

//page 67

