clc
clear
//input data
P0=0.2*9.81*(10^3)*(10^-5)//Total increase in pressure in bar
P01=1.04//Total inlet pressure of air in bar
T01=291//Total inlet temperature of air in K
ntt=0.72//Total-to-total efficiency of the process
r=1.4//ratio of specific heats for air
Cp=1.005//specific at heat at constant pressure in kJ/kg.K

//calculations
P2=P0+P01//The total exit pressure in bar
T02=((((P2/P01)^((r-1)/r)-1)*T01)/ntt)+T01//Total temperature at the outlet in K
h0=Cp*(T02-T01)//Actual change in total enthalpy in kJ/kg
h0s=h0*ntt//Isentropic change in total enthalpy in kJ/kg

//output
printf('(a)The total exit pressure is %3.4f bar\n and the total exit temperature is %3.2f K\n(b)The actual change in total enthalpy is %3.3f kJ/kg\n and the isentropic change in total enthalpy is %3.3f kJ/kg',P2,T02,h0,h0s)
