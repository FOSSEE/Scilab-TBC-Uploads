clc
clear

//Input data
C=500 //Airplane velocity in m/s
T=20+273 //Temperature in K
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
a=sqrt(k*R*T) //Sound velocity in m/s
M=C/a //Mach number
alp=asind(1/M) //Mach angle in degree

//Output
printf('Mach angle is %3.3f degree',alp)
