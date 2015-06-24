clc,clear
printf('Example 4.16\n\n')

P=1000 //power absorbed in watts
k_0=8.854*10^-12 //permittivity of free space
k=3.6 //relative permittivity of wood
A=0.5 //area of cross section of plate in m^2
t=0.025 //thickness in m
f=25*10^6 //frequency in hertz

C=k_0*k*A/t //capacitance of capacitor formed
phi=acos(0.046) //power factor angle
delta=%pi/2 - phi 

V = sqrt(P/(2*%pi*f*C*delta))
printf('Voltage employed is %.2f volts',V)
