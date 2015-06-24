//pathname=get_absolute_file_path('1.13.sce')
//filename=pathname+filesep()+'1.13-data.sci'
//exec(filename)
//Specific heat at constant pressure(in kJ/kg-K):
Cp=2.286
//Specific heat at constant volume(in kJ/kg-K):
Cv=1.768
//Universal gas constant(in kJ/kg-K):
Ru=8.314
//Gas constant(in kJ/kg-K):
R=Cp-Cv
//Molecular weight of gas(in kg/K mol):
m=Ru/R
printf("\n\n RESULT \n\n")
printf("\n\n Molecular weight of gas = %f kg/K mol",m)