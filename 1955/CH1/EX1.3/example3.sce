clc
clear
//input data
h0=6//Change in total enthalpy in kJ/kg
T01=303//Total inlet temperature of fluid in K
P01=1//Total inlet pressure of fliud in bar
Cp=1.005//specific at heat at constant pressure in kJ/kg.K
ntt=0.75//Adiabatic total-to-total efficiency
r=1.4//ratio of specific heats for air

//calculations
T02=T01+(h0/Cp)//Exit total termperature of fliud in K
P1=(1+((ntt*h0)/(Cp*T01)))^(r/(r-1))//Total pressure ratio of fluid 
h0s=ntt*h0//Change in enthalpy of process in kJ/kg
P0=((h0s*1000)/100)//Change in pressure in bar
P02=P0+P01//Total outlet pressure of fliud in bar
P2=(P02/P01)//Total pressure ratio of fliud

//output
printf('(a)The exit total temperature of fliud is %3.2f K\n(b)The total pressure ratio if:\n(1)The fliud is air is %3.3f\n(2)The fliud is liquid water is %3.0i',T02,P1,P2)

