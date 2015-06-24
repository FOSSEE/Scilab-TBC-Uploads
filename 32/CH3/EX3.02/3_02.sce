//pathname=get_absolute_file_path('3.02.sce')
//filename=pathname+filesep()+'3.02-data.sci'
//exec(filename)
//Mass of the gas(in kg):
m=0.5
//Initial internal energy(in kJ/kg):
u1=26.6
//Final internal energy(in kJ/kg):
u2=37.8
//Heat required(in kJ):
Q=(u2-u1)*m
printf("\nRESULT\n")
printf("Heat required= %f kJ",Q)