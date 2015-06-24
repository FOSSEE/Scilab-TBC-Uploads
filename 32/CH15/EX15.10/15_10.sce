//pathname=get_absolute_file_path('15.10.sce')
//filename=pathname+filesep()+'15.10-data.sci'
//exec(filename)
//Height in mercury column at inlet in condenser(in cm):
H1=72
//Height in mercury column at outlet in condenser(in cm):
H2=73
//Dryness fraction:
x=0.92
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//From steam tables:
hf=141.97 //kJ/kg
hfg=2421.33 //kJ/kg
Tsat1=33.87 //C
Tsat2=28.96 //C
//Inlet pressure in condenser(in kPa):
p1=(76-H1)*d*10^4*g*10^(-3)
//Outlet pressure in the condenser(in kPa):
p2=(76-H2)*d*10^4*g*10^(-3)
//Undercooling(in C):
u=Tsat1-Tsat2
//Enthalpy of steam entering(in kJ/kg):
h=hf+x*hfg
//Cooling water requirement(in kg/kg steam):
m=(h-Cpw*Tsat2)/(Cpw*13.87)
printf("\nRESULT\n")
printf("\nUndercooling = %f C",u)
printf("\nCooling water requirement = %f kg/kg steam",m)