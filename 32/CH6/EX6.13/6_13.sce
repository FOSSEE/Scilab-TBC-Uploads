//pathname=get_absolute_file_path('6.13.sce')
//filename=pathname+filesep()+'6.13-data.sci'
//exec(filename)
//Pressure of the steam(in MPa):
p=4
//Temperature of steam entering(in °C):
T1=300
//Temperature of steam at turbine exit(in °C):
T2=50
//From steam tables:
h1=2886.2 //kJ/kg
s1=6.2285 //kJ/kg.K
hf = 209.33 //kJ/kg
sf = 0.7038 //kJ/kg.K
hfg = 2382.7 //kJ/kg
sfg = 7.3725 //kJ/kg.K
//Let:
s2=s1
//Dryness fraction:
x2=(s2-sf)/sfg
//Enthalpy at state 2(in kJ/kg):
h2=hf+x2*hfg
//Turbine work(in kJ/kg):
W=h1-h2
printf("\nRESULT\n")
printf("\nTurbine output = %f kJ/kg",W)