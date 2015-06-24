//pathname=get_absolute_file_path('1.21.sce')
//filename=pathname+filesep()+'1.21-data.sci'
//exec(filename)
//Volume of vessel(in m^3):
v=20
//Rate at which air is drawn(in m^3/min):
q=0.25
//Initial pressure/final pressure (ratio):
Pr=4
//Time required(in min):
t=v/q*log(Pr)
printf("\n\n RESULT \n\n")
printf("\n\n Time required = %f mins \n\n",t)