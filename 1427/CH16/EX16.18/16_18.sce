//ques-16.18
//Finding temperature at which k is 10000 per s
clc
k1=4.5*10^3;//rate constant (in /s)
T1=1;//temperature (in degree celsius)
Ea=58;//activation energy (in kJ/mol)
k2=10^4;//new rate constant (in /s)
//logk = logA - (Ea/(2.303*R*T))
z=14.71;//logA
T2=(Ea*1000)/(2.303*8.314*(z-log10(k2)));//temperature (in K)
printf("Temperature required is %.0f K.",T2);
