clear
clc
//Example 12.5 PROPERTY CHANGES ACROSS NORMAL SHOCK WAVE
k=1.4;
M1=1.6; //Upstream Mach number
p1=100; //pressure[kPa]
T1=15+273; //[K]
//Downstream Mach number
M2=sqrt(((k-1)*M1^2+2)/(2*k*M1^2-(k-1)))
printf("\nThe Mach number for downstream of the shock wave, M = %.3f.\n\n",M2)
//Downstream pressure
p2=p1*[(1+k*M1^2)/(1+k*M2^2)] //[kPa]
printf("\nThe pressure for downstream of the shock wave, P = %.f kPa, absolute.\n\n",p2)
//Downstream temperature
T2=T1*{(1+[(k-1)/2]*M1^2)/(1+[(k-1)/2]*M2^2)} //[K]
printf("\nThe temperature for downstream of the shock wave, T = %.f K or %.f°C.\n",T2,T2-273)