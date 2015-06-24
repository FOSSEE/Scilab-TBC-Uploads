//pathname=get_absolute_file_path('15.03.sce')
//filename=pathname+filesep()+'15.03-data.sci'
//exec(filename)
//Height in mercury column in condenser(in cm):
h=67
//Absolute pressure in the condenser(in kPa):
pt=10.67
//Partial pressure of steam(in kPa):
ps=7.384
//Mass flow rate of steam(in kg/min):
ms=50
//Mass flow rate of water(in kg/min):
mw=1000
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//Gas constant(in kJ/kg.K):
R=0.287
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//From steam tables:
hf=167.57 //kJ/kg
hfg=2406.7 //kJ/kg
vg=19.52 //m^3/kg
//Corrected vacuum(in cm):
cv=76-(75-h)
printf("\nRESULT\n")
printf("\nCorrected vacuum = %d cm of Hg",cv)
//Partial pressure of air(in kPa):
pa=pt-ps
//VAcuum efficiency:
n=h*d*10^4*g/(75*d*10^4*g-ps*10^3)*100
printf("\nVacuum efficiency = %f percent",n)
//Undercooling of condensate(in C):
u=40-35
printf("\nUndercooling = %d C",u)
//Condenser efficiency:
n1=(25-10)/(46.9-10)*100
//Enthalpy of steam(in kJ/kg):
h=mw/ms*Cpw*(25-10)+Cpw*40
//Dryness fraction:
x=(h-hf)/hfg
printf("\nDryness fraction of steam entering = %f",x)
//Mass of air per m^3 of condenser volume(in kg/m^3):
m=pa/(R*(273+40))
//Mass of air in 1kg of uncondensate steam(in kg):
m1=pa*vg/(R*(273+40))
printf("\nMass of air/m^3 of condenser volume = %f kg/m^3",m)
printf("\nMass of air in per kg of uncondensate steam = %f kg",m1)