//pathname=get_absolute_file_path('18.16.sce')
//filename=pathname+filesep()+'18.16-data.sci'
//exec(filename)
//Rate at which air enters(in m^3/s):
r=3
//From steam tables:
h1=36.4 //kJ/kg
h2=52 //kJ/kg
v1=0.825 //m^3/kg
//Mass of air(in kg/s):
m=3/v1
//Amount of heat added(in kJ/s):
q=m*(h2-h1)
printf("\n RESULT \n")
printf("\nHeat added = %f kJ/s",q)