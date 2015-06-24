//pathname=get_absolute_file_path('15.01.sce')
//filename=pathname+filesep()+'15.01-data.sci'
//exec(filename)
//Height of mercury column in condenser(in mm of Hg):
h=71
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Rate at which cooling water is circulated(in kg/min):
mw=800
//Condensate available at(in kg/min):
ms=25
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//From steam tables:
ps=5.62 //kPa
hf=146.68 //kJ/kg
hfg=2418.6 //kJ/kg
//Absolute pressure in the condenser(in kPa):
pt=(76-h)*10^(-2)*d*10^6*9.81*10^(-3)
//Partial pressure of air(in kPa):
pa=pt-ps
//Mass of air per m^3 of condenser volume:
ma=pa/((273+35)*R)
//Enthalpy of steam(in kJ/kg):
hs=mw/ms*Cpw*(25-15)+Cpw*30
//Dryness fraction of the steam entering:
x=(hs-hf)/hfg
//Vacuum efficiency:
n=h*d*10^4*g/(76*d*10^4*g-ps*10^3)*100
printf("\nRESULT\n")
printf("\nMass of air of condenser volume = %f kg/m^3",ma)
printf("\nDryness fraction of steam entering = %f",x)
printf("\nVacuum efficiency = %f percent",n)