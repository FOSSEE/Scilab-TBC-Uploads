//pathname=get_absolute_file_path('15.08.sce')
//filename=pathname+filesep()+'15.08-data.sci'
//exec(filename)
//Height in mercury column in condenser(in cm):
H=65
//Rate at which steam enters(in kg/min):
ms=20
//Mass of cooling water per kg of steam:
m=12
//Height in mercury column in air pump(in cm):
H1=66
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
//From steam tables:
ps=7.384 //kPa
ps1=5.628 //kPa
hf=167.57 //kJ/kg
hfg=2406.7 //kJ/kg
//Absolute pressure in condenser(in kPa):
pt=(76-H)*d*10^4*g*10^(-3)
//Partial pressure of air(in kPa):
pa=pt-ps
//Cooling water required(in kg/min):
mw=m*ms
//Enthalpy of steam entering:
h=((ms+mw)*Cpw*40-mw*Cpw*20)/ms
//Dryness fraction of steam entering:
x=(h-hf)/hfg
printf("\nRESULT\n")
printf("\nDryness fraction of steam entering = %f",x)
//Absolute partial pressure at suction in air pump(in kPa): 
pt1=(76-H1)*d*10^4*g*10^(-3)
//Partial pressure of air(in kPa):
pa1=pt1-ps1
//Volume of mixture(in m^3):
V=2
//Mass of air entering(in kg/min):
m1=pa1*V/(R*(273+35))
//Head(in m):
H2=(p-pt)/(g*d*10^3)
printf("\nMass of air entering = %f kg/min",m1)
printf("\nHead = %f m",H2)