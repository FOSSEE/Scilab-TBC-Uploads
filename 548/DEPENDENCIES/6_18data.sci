//for the CJ-1:
W=54966.4;//empty weight(N)   
S=29.54;//wingarea(m^2)
D=1.225;//density at sea level(Kg/m^3)
g=9.8;//Gravitational constant
Ur=0.4;//Rolling friction coefficient
Clmax=2.5;//maximum lift coefficient
Cd=0.02;//parasite drag coefficient
Cdo=Cd+.1*Cd;//increase in parasite drag coefficient
Vt=1.3*sqrt(2*W/(D*S*Clmax));//safe velocity(1.3*Vstall) during landing
Dr=D*(0.7*Vt)^2*S*Cdo/2;//drag(N)
