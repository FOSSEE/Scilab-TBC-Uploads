clc
//solution
// initialization of variables
Cp=1.0 // specific heat at constant pressure
k=1.4 // polytropic index for air
T1=25+273 // temperature at compressor inlet
T3=850+273 // maximum temperature in kelvin

r=5 // pressure ratio=P2/P1 & P4/P3

T2=T1*(r)^((k-1)/k) // temperature after compression

T4=T3*(1/r)^((k-1)/k) // final temperature

Wcomp=Cp*(T2-T1) // compressor work
Wturb=Cp*(T3-T4) // turbine work

BWR=Wcomp/Wturb // back work ratio

printf("The BWR is %0.1f %%\n",BWR*100) 

Effi=1-r^((1-k)/k) // thermal efficiency

printf(" The thermal efficiency is %0.1f %% \n",Effi*100)









