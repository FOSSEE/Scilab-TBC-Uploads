clc
clear
//Initialization of variables
Tc=647.3 //K
dh=1.1
Db=-2
v2=0.234
v1=0.27
//calculations
dh2=dh+Db*(v2-v1)
dhh=dh2*Tc
dhbar=dhh*4.18/18
disp("From steam tables,")
h1=3777.5 //kJ/kg
h2=3928.2 //kJ/kg
dhs=h2-h1
err=abs(dhs-dhbar)/dhs
//results
printf("Enthalpy departure = %d kJ/kg",dhbar)
printf("\n Percentage error = %.1f ",err*100)
