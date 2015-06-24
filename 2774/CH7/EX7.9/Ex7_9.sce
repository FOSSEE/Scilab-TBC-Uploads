clc
clear
//solution
// initialization of variables

Cp=1 // specific constant at constant pressure
k=1.4 // polytropic constant for air
r=10
T2=-10+273 // temperature at entry  of compressor
T4=30+273 // temperature at entry of turbine

T3=T2*(r^((k-1)/k)) // temperature at state 3 in kelvin
T1=T4*(1/r^((k-1)/k)) // temperature at state 1 in degree celsius
printf("The minimum temperature is %0.1f degree celsius \n",T1-273)

qin=Cp*(T2-T1) // heat input
Wcomp=Cp*(T3-T2)// compressor work
Wturb=Cp*(T4-T1) // turbine work

COP=qin/(Wcomp-Wturb) // COP of refrigeration
printf(" The COP is %0.2f ",COP)
