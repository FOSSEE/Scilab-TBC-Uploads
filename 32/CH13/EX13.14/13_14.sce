//pathname=get_absolute_file_path('13.14.sce')
//filename=pathname+filesep()+'13.14-data.sci'
//exec(filename)
//Mass flow rate(in kg/s):
m1=150/60
//Height of water level from the axis of injector(in m):
H=5
//Pressuer at which steam is injected(in bar):
p4=20
//Water level in boiler from the injector(in m):
Z4=0.8
//Dryness fraction at state 1:
x1=0.95
//Velocity in delivery pipe(in m/s):
C4=20
//Atmospheric pressure(in bar):
p3=1.013
//Density(in kg/m^3):
d=10^3
//Acceleration due to gravity(in m/s^2):
g=9.81
//Specific heat of steam(in kJ/kg.K):
Cps=3.18
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//From steam tables:
T1=212.42 //C 
Tw=25 //C
p2=0.7*p4
h1=2704.95 //kJ/kg
hfg1=1890.7 //kJ/kg
s1=6.1462 //kJ/kg.K
s2=s1
x2=0.923
h2=2639.10 //kJ/kg
v2=0.13 //m^3/kg
//Velocity of steam at throat(in m/s):
C2=sqrt(2*(h1-h2)*10^3)
//Velocity at state 3(in m/s):
C3=sqrt(2*(g*Z4+p4*10^5/d+C4^2/2-p3*10^5/d))
//Mass of water pumped per kg of steam(in kg):
m=(C2-C3)/(sqrt(2*g*H)+C3)
printf("\nRESULT\n")
printf("\nMass of water pumped per kg of steam = %f kg",m)
//Mass of mixture passing through state 3(in kg/s):
m3=m1+m1/m
//Area of throat of mixing nozzle(in cm^2):
A3=m3/(d*C3)*10^4
//Diameter of throat of the mixing nozzle(in cm):
d3=sqrt(A3*4/%pi)
printf("\nDiameter of throat of the mixing nozzle = %f cm",d3)
//Mass of steam required for given flow rate(in kg/s):
ms=m1/m
//Area at state 2(in cm^2):
A2=ms*v2/C2*10^4
//Diameter of throat of steam nozzle(in cm):
d2=sqrt(A2*4/%pi)
printf("\nDiameter of throat of steam nozzle = %f cm",d2)
//Temperature of water coming out of the injector(in C):
T3=(x1*hfg1+Cps*T1+m*Cpw*Tw)/(m*Cpw+Cps)
printf("\nTemperature of water coming out of the injector = %f C",T3)