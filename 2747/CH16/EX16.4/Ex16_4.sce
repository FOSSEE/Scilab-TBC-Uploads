clc
clear
//Initialization of variables
N2=78.1
M=29
co2=8.7
co=8.9
x4=0.3
x5=3.7
x6=14.7
//calculations
O2=N2/3.76
Z=(co2+co+x4)/8
AF=(O2+N2)*M/(Z*113)
//results
printf("Air fuel ratio = %.1f lbm air/lbm fuel",AF)
