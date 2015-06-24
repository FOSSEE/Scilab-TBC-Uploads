//pathname=get_absolute_file_path('3.09.sce')
//filename=pathname+filesep()+'3.09-data.sci'
//exec(filename)
//Work interaction(in kJ):
w=-200
//Increase in enthalpy(in kJ/kg):
dh=100
//Heat picked up by the cooling water(in kJ/kg):
qc=-90
//Heat flow(in kJ/kg):
Q=dh+w
//Heat transferred to atmosphere(in kJ/kg):
Qa=Q-qc
printf("\nRESULT\n")
printf("\nHeat transferred to atmosphere = %d kJ/kg",Qa)