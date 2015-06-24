clc
//initialization of new variables
clear
P0=4 //atm
T0=300 //K
At=5 //cm^2
Ae=10 //cm^2
//calculations
//case (1)
P1=3.8 //atm
Pr=P0/P1
M1=0.26  //from the figure
Ar=2.32
Aa=Ae/Ar  //A*
Art=At/Aa //At/A*
Mt=0.64 //from the figure
printf('case (1)')
printf('\n Exit Mach = %.2f ',Mt)
//case (2)
Aer=2.00 //from figure
M2=0.3 //based on the area ratio
Pr=0.939
P2=Pr*P0
printf('\n case (2)')
printf('\n back Pressure is %.2f atm',P2)
printf('\n Exit Mach = %.2f ',M2)
printf('\n So when the pressure at the exit is lowered a bit, the velocity at the throat becomes sonic.')
//case (3)
Ar=2.00 //from figure
M2=2.2 //based on area ratio
Pr=0.094 
P2=Pr*P0
printf('\n case (3)')
printf('\n back pressure is %.2f atm',P2)
printf('\n Exit Mach = %.2f ',M2)
printf('\n The pressure ratio has to be very smaller to create a supersonic nozzle')
