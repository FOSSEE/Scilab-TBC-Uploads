//pathname=get_absolute_file_path('13.15.sce')
//filename=pathname+filesep()+'13.15-data.sci'
//exec(filename)
//Pressure at which steam is generated(in bar):
p4=20
//Pressure at inlet(in bar):
p1=1.5
//Dryness fraction:
x1=0.9
//Mass of water taken from feed water tank(in kg/hr):
M=5000
//Density(in kg/m^3):
d=10^3
//From steam tables:
h1=2470.96 //kJ/kg
s1=6.6443 //kJ/kg.K
s2=s1
x2=0.88
h2=2396.72 //kJ/kg
v2=1.7302 //m^3/kg
//Steam velocity(in m/s):
C2=sqrt(2*(h1-h2)*10^3)
//Velocity at 3(in m/s):
C3=sqrt(1.2*p4*2*10^5/d)
//Mass entrained per kg of steam:
m=C2/C3-1
//Mass of steam supplied per second(in kg/s):
ms=M/(3600*m)
//Area of steam nozzle(in cm^2):
A2=ms*v2/C2*10^4
//Total discharge from injector(in kg/s):
D=M/3600+ms
//Area of discharge orifice(in cm^2):
A=D/(C3*d)*10^4
printf("\nRESULT\n")
printf("\nMass of water pumped per kg of steam = %f kg water/kg of steam",m)
printf("\nArea of steam nozzle = %f cm^2",A2)
printf("\nArea of discharge orifice = %f cm^2",A)