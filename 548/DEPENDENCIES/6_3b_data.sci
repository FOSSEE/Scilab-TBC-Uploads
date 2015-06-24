//for the jet power executive aircraft(CJ-1):
b=16.25;//wingspan(meter)
S=29.54;//wingarea(m^2)
AR=b^2/S;//aspect ratio
D=0.6107;//density at 6705.6 meter
W=88176.75;//normal gross weight(N)
Cdo=0.02;//parasite drag coefficient
e=0.81;//oswald efficiency factor
V=linspace(20,300,500);//velocity over which we have to find Power(20 to 300 m/s and over 500 points)
