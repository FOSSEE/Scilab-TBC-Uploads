//pathname=get_absolute_file_path('1.25.sce')
//filename=pathname+filesep()+'1.25-data.sci'
//exec(filename)
//Mass of hydrogen taken(in kg):
mh=2
//Mass of helium taken(in kg):
mhe=3
//Specific heat at constant pressure for hydrogen(in kJ/kg-K):
Ch=11.23
//Specific heat at constant pressure for helium(in kJ/kg-K):
Che=5.193
//Total mass of the mixture(in kg):
mt=mh+mhe
//Specific heat at constant pressure for the mixture(in kJ/kg-K):
Cm=(Ch*mh+Che*mhe)/mt
printf("\n\n RESULT \n\n")
printf("\n\n Specific heat at constant pressure for the mixture = %f kJ/kg-K \n\n",Cm)