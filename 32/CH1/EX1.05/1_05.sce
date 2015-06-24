//pathname=get_absolute_file_path('1.05.sce')
//filename=pathname+filesep()+'1.05-data.sci'
//exec(filename)
//Barometer Reading(in m):
h=76*10^-2
//Density of mercury(in kg/m^3):
d=13.6*10^3
//Acceleration due to gravity(in m/s^2):
g=9.8
//Difference of heights in gas barometer(in m):
h1=40*10^-2
//Pressure of gas(in kPa):
pg=(d*g*h1+d*g*h)*10^-3
printf("\n\n RESULT \n\n")
printf("\n\n Pressure of gas=%f kPa\n\n",pg)
