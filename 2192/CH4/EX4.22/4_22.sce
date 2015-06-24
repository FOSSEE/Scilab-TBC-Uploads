clc,clear
printf('Example 4.22\n\n')

P=200//power absorbed in watts
phi=acos(0.05) //power factor angle
f=3*10^6 //supply frequency in hertz
k_0=8.854*10^-12 //permittivity of free space
k=5 //relative permittivity of material
A=1500*10^-6 //Area of slab
t=20*10^-3  //thickness of insulating material

C=k_0*k*A/t //capacitance of capacitor formed
V=sqrt(P/(2*%pi*f*C*cos(phi))) //voltage required
printf('Voltage required for heating = %.0f V',V)
I=P/(V*cos(phi)) //current flowing through material
printf('\nCurrent flowing through material = %.1f A',I)

printf('\n\nWARNING :Answers may not match due to rounding off')
