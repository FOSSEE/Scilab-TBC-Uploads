clc
clear
//solution
// initialization of variables

Cp=1 // specific constant at constant pressure
k=1.4 // polytropic constant for air
r=10
T3=-10+273 // temperature at entry  of compressor
T6=-40+273 // temperature at entry of turbine

T5=T3 // heat exchanger
T2=T6 // heat exchanger

T4=T3*(r^((k-1)/k)) // temperature after compression
T1=T6*(1/r^((k-1)/k)) // temperature after exit from turbine

printf("The minimum temperature is %0.i degree celsius \n",T1-273)

qin=Cp*(T2-T1) // heat input
Wcomp=Cp*(T4-T3)// compressor work
Wturb=Cp*(T6-T1) // turbine work

COP=qin/(Wcomp-Wturb) // COP of refrigeration
printf(" The COP is %0.3f ",COP) 

// the answer is correct within given limits
