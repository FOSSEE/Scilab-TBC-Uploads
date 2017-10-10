clc//
//
//

//Variable declaration
mew_e=0.19;     //electron mobility(m^2/Vs)
e=1.6*10^-19;        
T=300;    //temperature(K)
k=1.38*10^-23;

//Calculation
Dn=mew_e*k*T/e;     //diffusion coefficient(m^2 s-1)

//Result
printf("\n diffusion coefficient is %0.3f *10^-4 m^2 s-1",Dn*10^4)
printf("\n answer varies due to rounding off errors")
