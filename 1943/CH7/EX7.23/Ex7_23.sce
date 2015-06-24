
clc
clear
//Input data
p1=20//Pressure in bar
T=400//Temperature in degree C
p2=0.1//Pressure in bar
n=4//Number of stages
ns=75//Stage efficiency in percent

//Calculations
h16s=(3250-2282)//Change in enthalpy in kJ/kg
h12s=(h16s/n)//Change in enthalpy in kJ/kg
p=[8,2.6,0.6]//pressures in bar from Mollier chart
h12=(ns/100)*h12s//Change in enthalpy in kJ/kg
h23s=(3060-2800)//Change in enthalpy in kJ/kg
h23=(ns/100)*h23s//Change in enthalpy in kJ/kg
h34s=(2870-2605)//Change in enthalpy in kJ/kg
h34=(ns/100)*h34s//Change in enthalpy in kJ/kg
h45s=(2680-2410)//Change in enthalpy in kJ/kg
h45=(ns/100)*h45s//Change in enthalpy in kJ/kg
h5=2470//Enthalpy in kJ/kg
rf=(h12s+h23s+h34s+h45s)/h16s//Reheat factor
nth=((h12+h23+h34+h45)/h16s)*100//Internal efficiency in percent
nin=(ns*rf)//Internal efficiency in percent

//Output
printf('The interstage pressures are %i bar, %3.1f bar, %3.1f bar \n The reheat factor is %3.3f \n The turbine internal efficiency is %3.1f percent',p(1),p(2),p(3),rf,nin)
