//pathname=get_absolute_file_path('6.03.sce')
//filename=pathname+filesep()+'6.03-data.sci'
//exec(filename)
//Pressure(in MPa):
p=12
//Specific volume(in m^3/kg):
v=0.017
//Enthaply(in kJ/kg):
h=2848
//Internal energy(in kJ/kg):
u=h-p*10^3*v
printf("\nRESULT\n")
printf("\nInternal energy = %d kJ/kg",u)