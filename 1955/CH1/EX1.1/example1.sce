clc
clear
//input data
P01=1//initial pressure of a fluid in bar
P02=10//final pressure of a fliud in bar
T01=283//initial total temperature in K
ntt=0.75//total-to-total efficiency
d=1000//density of water in kg/m^3
r=1.4//ratio of specific heats for air
Cp=1.005//specific at heat at constant pressure in kJ/kg.K

//calculations
h0s1=(1/d)*(P02-P01)*10^2//enthalpy in kJ/kg
h01=(h0s1/ntt)//enthalpy in kJ/kg
T02s=T01*(P02/P01)^((r-1)/r)//temperature in K
h0s2=(Cp*(T02s-T01))//enthalpy in kJ/kg
h02=(h0s2/ntt)//enthalpy in kJ/kg

//output
printf('The work of compression for adiabatic steady flow per kg of fliud if \n(a)The fliud is liquid water is %3.1f kJ/kg\n(b)The fliud is air as a perfect gas is %3.2f kJ/kg',h01,h02)

