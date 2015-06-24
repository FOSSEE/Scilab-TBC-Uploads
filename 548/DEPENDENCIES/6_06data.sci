//for the CP-1(datas from example 6.1a):
b=10.912;//wingspan(meter)
S=16.165;//wingarea(m^2)
AR=b^2/S;//aspect ratio
D=1.225;//density at sea level(Kg/m^3)
W=13127.5;//normal gross weight(N)
f=65;//fuel capacity
P=230;//power provided by piston engine (unit-horsepower(hp))
Sf=2.0025;//specific fuel consumption(N/(hp.h))
Cdo=0.025;//parasite drag coefficient
e=0.8;//oswald efficiency factor
Pf=0.8;//propeller efficiency
V = linspace(30,80,500);//velocity over which we have to find thrust(30 to 400 m/s and over 500 points)
Pa=P*Pf*746/1000//power available(KN-m/s)
