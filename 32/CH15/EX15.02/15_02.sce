//pathname=get_absolute_file_path('15.02.sce')
//filename=pathname+filesep()+'15.02-data.sci'
//exec(filename)
//Height of mercury column in condenser(in mm of Hg):
h=70
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Leakage of air in condenser:
r=2500
//Gas constant(in kJ/kg.K):
R=0.287
//From steam tables:
ps=4.246 //kPa
vg=32.89 //m^3/kg
//Absolute pressure in the condenser(in kPa):
pt=(76-h)*10^(-2)*d*10^6*9.81*10^(-3)
//Partial pressure of air(in kPa):
pa=pt-ps
//Mass of air accoumpanying per kg of steam due to leakage(in kg):
m=1/r
//Volume of air per kg of steam(in m^3/kg):
v=m*R*(273+30)/pa
printf("\nRESULT\n")
printf("\nCapacity of air pump = %f m^3 per kg steam",v)
//Mass of water vapour accompanying air:
m1=v/vg
printf("\nMass of water vapour accompanying air = %f kg/kg of steam",m1)
