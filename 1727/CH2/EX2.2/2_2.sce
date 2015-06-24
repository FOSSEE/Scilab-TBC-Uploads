clc 
//Initialization of variables
depth=8000 //m
sw=10.06 //kN/m^3
BM=2.05*10^9 //N/m^2
//calculations
g=sw*10^3 /(1- sw*10^3 *depth/BM)
Ph=2.3*BM*log10(BM/(BM-depth*9.81*1025))
//results
printf("Specific weight = %.2f kN/m^2",g/1000)
printf("\n Pressure at depth h = %.2f MN/m^2",Ph/10^6)
