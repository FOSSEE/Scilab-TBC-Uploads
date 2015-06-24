//consider the CJ-1 at sea level.
b=16.25;//wingspan(meter)
S=29.54;//wingarea(m^2)
AR=b^2/S;//aspect ratio
D=1.225;//density at sea level(Kg/m^3)
W=88176.75;//normal gross weight(N)
Tf=2*16245//thrust (N) provided by two turbofan engine
Cdo=0.02;//parasite drag coefficient
e=0.81;//oswald efficiency factor
V=linspace(40,300,500);//velocity over which we have to find thrust(40 to 300 m/s and over 500 points)
