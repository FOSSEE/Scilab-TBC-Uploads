clc,clear
printf('Example 4.7\n\n')

P=400 //power absorbed in watts
phi=acos(0.05) //power factor angle
f=40*10^6 //frequency in hertz
k_0=8.854*10^-12 //permittivity of free space
k=5 //relative permittivity of wood
A=200*10^-4 //area of cross section of plate in m^2
t=0.02 //thickness in m

C=k_0*k*A/t //capacitance of capacitor formed

V = sqrt(P/(2*%pi*f*C*cos(phi)))
printf('Necessary voltage is %.0f volts',V)

I=P/(V*cos(phi))
printf('\nCurrent flowing through material is %.3f Amp',I)

//heat produced=f*V^2 ; 
V_2=700 //new limited voltage
f2 = f*(V/V_2)^2
printf('\nRequired frequency is %.1f*10^6 Hz',f2/10^6)

