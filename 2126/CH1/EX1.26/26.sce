clc
clear

//Input data
T=400 //Static temperature in K
k=1.4 //Adiabatic Constant
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
R=287 //Specific gas constant in J/kg-k

//Calculation
a=sqrt(k*R*T) //Sound velocity in m/s
C=a //Velocity of jet in m/s, Since jet has sonic velocity
To=T+(C^2/(2*Cp)) //Stagnation temperature in K
ao=sqrt(k*R*To) //Sound velocity at Stagnation condition in m/s 
ho=(Cp*To)*10^-3 //Stagnation enthalpy in kJ/kg
C_max=sqrt(2*Cp*To) //Maximum velocity of jet in m/s
cr=C/C_max //Crocco number

//Output
printf('(A)Velocity of sound at %3i K is %3.3f m/s\n (B)Velocity of sound at stagnation condition is %3.3f m/s\n (C)Maximum velocity of jet is %3.3f m/s\n (D)Stagnation enthalpy is %3.3f kJ/kg\n (E)Crocco number is %3.4f',T,C,ao,C_max,ho,cr)
