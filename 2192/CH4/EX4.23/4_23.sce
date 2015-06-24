clc,clear
printf('Example 4.23\n\n')

A1= (25-5)*2*10^-4 //area of air envelope
A2=5*2*10^-4 //Area of plywood in m^2
t=2/100 //distance between electrodes
t1=1/100 //thickness of plywood in m
t2=(2-1)/100 //thickness of air envelope
eps_0 = 8.854*10^-12 //permittivity of free space
eps_r1 =5 //relative permittivity of plywood
eps_r2 =1 //relative permittivity of air

//capacitance of capacitor
C= eps_0 * (  (A1*eps_r2/t) +  (A2/((t1/eps_r1)+(t2/eps_r2)))  )

P=1000 //power consumed
f=10*10^6 //frequency of electric current
phi=acos(0.04) //power factor angle

//part(i)
V = sqrt(P/(2*%pi*f*C*cos(phi)))  //voltage across the electrode
printf('(i)Voltage across the electrode = %.0f V',V)
//part(ii)
I=P/(V*cos(phi)) //current through plywood
printf('\n(ii)Current through plywood = %.3f A',I)
