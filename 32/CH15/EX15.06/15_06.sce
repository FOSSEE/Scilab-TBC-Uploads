//pathname=get_absolute_file_path('15.06.sce')
//filename=pathname+filesep()+'15.06-data.sci'
//exec(filename)
//Height in mercury column in condenser(in cm):
h=70
//Inlet temperature(in K):
T=30+273
//Dryness fraction:
x=0.85
//Rate at which steam enters(in kg/min):
m=300
//Velocity of water flow:
v=50
//Pressure head(in m):
ph=5
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//From steam tables:
ps=4.246 //kPa
mw=7415 //kg/min
//Absolute pressure in condenser(in kPa):
pt=(76-h)*d*10^4*g
//Partial pressure of air(in kPa):
pa=pt-ps
//Volume flow of water(in m^3/min):
V=mw/1000
//Flow surface area required(in m^2):
a=V/v
printf("\nRESULT\n")
printf("\nFlow surface area required = %f m^2",a)
//Cooling surface area required(in m^2):
A=24.79
printf("\nCooling surface area required = %f m^2",A)
//Velocity head present(in m):
vh=1/2*(v/60)^2/g
//Total head required(in m):
th=ph+vh
printf("\nHead required = %f m",th)