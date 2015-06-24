//pathname=get_absolute_file_path('7.03.sce')
//filename=pathname+filesep()+'7.03-data.sci'
//exec(filename)
//Mass of steam(in kg):
m=15
//Entering steam:
//Pressure(in bar):
p1=10
//Temperature(in K):
T1=300+273
//Leaving steam:
//Pressure(in bar):
p2=0.05
//Dryness fraction:
x=0.95
//Velocity(in m/s):
v2=160
//Atmosheric pressure(in bar):
p0=1
//Atmospheric temperature(in K):
T0=15+273
//From steam tables:
h1=3051.2 //kJ/kg
s1=7.1229 //kJ/kg.K
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg
h0=62.99 //kJ/kg
s0=0.2245 //kJ/kg.K
//Enthalpy at exit of turbine(in kJ/kg):
h2=hf+x*hfg
//Entropy at exit of turbine(in kJ/kg.K):
s2=sf+x*sfg
//Work output(in kJ/kg):
W=(h1-h2)-v2^2/2*10^(-3)
//Power output(in kW):
pW=m*W
printf("\nRESULT")
printf("\nPower output = %f kW",pW)
//Maximum work given end states(in kW):
Wmax=(h1-T0*s1)-(h2+v2^2/2*10^(-3)-T0*s2)
printf("\nRESULT")
printf("\n\nMaximum power output = %f kW",m*Wmax)
//Maximum wor kavailable from exhaust steam(in kJ/kg):
Ae=(h2-h0)+v2^2/2*10^(-3)-T0*(s2-s0)
//Maximum power that could be obtained from exhaust steam(in kW):
Wme=m*Ae
printf("\n\nMaximum power from exhaust steam = %f kW",Wme)