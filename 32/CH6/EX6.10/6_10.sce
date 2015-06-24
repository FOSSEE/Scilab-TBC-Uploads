//pathname=get_absolute_file_path('6.10.sce')
//filename=pathname+filesep()+'6.10-data.sci'
//exec(filename)
//Presure of the steam(in kPa):
p1=800
//Temperature(in °C)
T=200
//From steam tables:
//Saturation temp(in °C):
Tsat=170.43
//Specific volume(in m^3/kg):
v1=0.2404 
v2=0.2404
//Final temperature(in °C):
T2=170.46
//Final pressure(in kPa):
p2=800.96
printf("\nRESULT\n")
printf("\nPressure =%f kPa",p2)
printf("\nTemperature = %f °C",T2)