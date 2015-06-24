clc
clear
//input data
W=100//Output power developed in kW
Q=0.1//Flow through device in m^3/s
d=800//Density of oil in kg/m^3
ntt=0.75//Total-to-total efficiency
C1=3//inlet flow velocity of oil in m/s
C2=10//outlet flow velocity of oil in m/s

//calculations
m=d*Q//Mass flow rate of oil in kg/s
h0=-(W/m)//Change in total enthalpy in kJ/kg
h0s=(h0/ntt)//Isentropic change in total enthalpy in kJ/kg
P0=((d*h0s)*(1/100))//Change in total pressure of oil in bar
P=P0-((d/(2000*100))*(C2^2-C1^2))//Change in static pressure in bar

//output
printf('The change in total pressure of oil is %3.1f bar\nThe change in static presure is %3.1f bar',P0,P)

