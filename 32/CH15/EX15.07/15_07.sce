//pathname=get_absolute_file_path('15.07.sce')
//filename=pathname+filesep()+'15.07-data.sci'
//exec(filename)
//Mass of steam entering(in kg/min):
m1=350
//Volume of water required(in m^3 per kg steam):
v=0.02
//Amount of air mass going into condenser:
r=0.05/100
//Volume of air dissolved in the water injected:
r1=5/100 
//Height in mercury column in condenser(in cm):
h=68
//Inlet temperature(in K):
T=20+273
//Atmospheric pressure(in kPa):
p=101.3
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//Volumetric efficiency:
n=0.90
//From steam tables:
ps=4.246 //kPa
vf=0.001004 //m^3/kg
//Absolute pressure in condenser(in kPa):
pt=(76-h)*d*10^4*g*10^(-3)
//Partial pressure of air(in kPa):
pa=pt-ps
//Volume of cooling water required per minute(in m^3/min):
V1=m1*v
//Mass of air going into condenser(in kg/min):
m2=m1*r
//Volume of air entering per minute with cooling water(in m^3/min):
V=V1*r1
//Mass of air with cooling water(in kg):
m=p*V/(R*T)
//Total mass of air inside condenser(in kg):
mt=m+m2
//Volume of air corresponding:
V2=mt*R*(273+30)/pa
//Volume of steam condensed(in m^3/min):
V3=m1*vf
//Total volume(in m^3/min):
Vt=V3+V2+V1
//Actual capacity of air pump(in m^3/min):
C=Vt/n
printf("\nRESULT\n")
printf("\nCapacity of air pump = %f m^3/min",C)