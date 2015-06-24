clc
//Initialization of variables
N0=6.025*10^26
M=32
k=1.38*10^-23
T=300 //K
//calculations
m=M/N0
vavg=sqrt(8*k*T/(%pi*m))
vrms=sqrt(3*k*T/m)
vm=sqrt(2*k*T/m)
//results
printf("Average velocity = %d m/sec",vavg)
printf("\n RMS velocity = %d m/sec",vrms)
printf("\n Most probable velocity = %d m/sec",vm)
