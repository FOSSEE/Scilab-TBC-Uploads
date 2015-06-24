clc
//solution
// initialization of variables

Cp=1.0 // specific heat at constant pressure
k=1.4 // polytropic index for air
T1=25+273 // temperature at compressor inlet
T3=850+273 // maximum temperature in kelvin

r=5 // pressure ratio=P2/P1 & P4/P3
efficomp=0.75 // efficiency of compressor
effiturb=0.75 // efficiency of turbine

T2dash=T1*(r)^((k-1)/k) // temperature after compression
Wcomp=Cp*(T2dash-T1)/efficomp // compressor work

T4dash=T3*(1/r)^((k-1)/k) // final temperature
Wturb=Cp*(T3-T4dash)*effiturb // turbine work

BWR=100*Wcomp/Wturb // back work ratio

printf("The BWR is %0.1f %%\n",BWR) 

T2=(Wcomp/Cp)+T1 // actual temperature of state 2

qin=Cp*(T3-T2) // using first law 

Wnet=(Wturb-Wcomp) // net work

effi=100*Wnet/qin // thermal efficiency
printf("The thermal efficiency is %0.2f %% \n",effi)



