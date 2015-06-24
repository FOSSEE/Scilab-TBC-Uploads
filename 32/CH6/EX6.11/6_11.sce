//pathname=get_absolute_file_path('6.11.sce')
//filename=pathname+filesep()+'6.11-data.sci'
//exec(filename)
//Temperature of water(in °C):
T=30
//Pressure(in kPa):
p=200
//From steam tables:
//Corresponding pressure at 30°C(in kPa):
p1=4.25
//Specific volume(in m^3):
v1=0.001004
//Enthalpy change(in kJ/kg):
dh=v1*(p-p1)
printf("\nRESULT\n")
printf("\nEnthalpy change = %f kJ/kg",dh)