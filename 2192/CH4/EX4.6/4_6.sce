clc,clear
printf('Example 4.6\n\n')

P=400 //power absorbed in watts
phi=acos(0.05) //power factor angle
f=30*10^6 //frequency in hertz
k_0=8.854*10^-12 //permittivity of free space
k=5 //relative permittivity of wood
A=150*10^-4 //area of cross section of plate in m^2
t=0.01 //thickness in m

C=k_0*k*A/t //capacitance of capacitor formed
V = sqrt(P/(2*%pi*f*C*cos(phi)))
printf('Necessary voltage is %.2f volts',V)
