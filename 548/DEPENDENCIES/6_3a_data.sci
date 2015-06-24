//for the cessna skylane(CP-1):
b=10.912;//wingspan(meter)
S=16.165;//wingarea(m^2)
AR=b^2/S;//aspect ratio
D=1.225;//density at sea level
Cdo=0.025;//parasite drag coefficient
e=0.8;//oswald efficiency factor
Pf=0.8;//propeller efficiency
V = linspace(20,400,500);//velocity over which we have to find Power(20 to 400 m/s and over 500 points)

