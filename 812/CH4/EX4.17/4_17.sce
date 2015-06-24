//Mass flow rate//
pathname=get_absolute_file_path('4.17.sce')
filename=pathname+filesep()+'4.17-data.sci'
exec(filename)
//Density of tank(in kg/m^3):
d=(p1+patm)/R/T
//Mass flow rate of air into the tank(in kg/sec):
m=d*V*cv*r/R/T*1000
printf("\n\nRESULTS\n\n")
printf("\n\nMass flow rate of air into the tank: %.3f g/sec\n\n",m)
