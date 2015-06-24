//pathname=get_absolute_file_path('15.09.sce')
//filename=pathname+filesep()+'15.09-data.sci'
//exec(filename)
//Leakage(in kg/min):
m=3
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//From steam tables:
ps=5.628 //kPa
ps1=5.075 //kPa
ps2=5.352 //kPa
//Absolute pressure in condenser(in kPa):
pt=ps
//Partial pressure of air(in kPa):
pa1=pt-ps1
//Volume of air handled by air pump(in m^3/hr):
V1=m*R*(273+33)/pa1
//Partial pressure of air(in kPa):
pa2=pt-ps2
//Volume of mixture handled(in m^3/hr):
V2=m*R*(273+34)/pa2
printf("\nRESULT\n")
printf("\nVolume of air handled = %f m^3/hr",V1)
printf("\nVolume of mixture handled = %f m^3/hr",V2)