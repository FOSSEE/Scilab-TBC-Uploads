//for the jet power executive aircraft(CJ-1):
W=88176.75;//normal gross weight(N) 
b=16.25;//wingspan(meter)  
S=29.54;//wingarea(m^2)
AR=b^2/S;//aspect ratio
e=0.81;//oswald efficiency factor
h=1.83;//Height(m)of wing above ground
D=1.225;//density at sea level(Kg/m^3)
g=9.8;//Gravitational constant
Ur=0.02;//Rolling friction coefficient
Cl=1.0;//maximum lift coefficient during ground roll
Cdo=0.02;//parasite drag coefficient
T=32485;//thrust(N)
phi=(16*h/b)^2/(1+(16*h/b)^2)//Ground effect factor
Vlo=1.2*sqrt(2*W/(D*S*Cl))//liftoff velocity(1.2*Vstall in m/s)
Dr=D*(0.7*Vlo)^2*S*(Cdo+phi*Cl^2/(%pi*e*AR))/2//drag(N)
L=D*(0.7*Vlo)^2*S*Cl/2//lift(N)
