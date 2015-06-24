// Given data:
clc
T1=40+273.0 // ambient temp in kelvin
T2=-10+273.0 // freezer temp in kelvin
Q2=2 // heat loss rate for freezer in kJ/s

Q1=T1*(Q2/T2) // heat transfer rate in kJ/s

W=Q1-Q2 // work in kW

printf("The least power required is %0.2f kW",W)
