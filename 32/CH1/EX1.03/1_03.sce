//pathname=get_absolute_file_path('1.03.sce')
//filename=pathname+filesep()+'1.03-data.sci'
//exec(filename)
//Difference in mercury column(in m):
h=30*10^-2
//Atmospheric Pressure(in kPa):
pa=101
//Acceleration due to gravity(in m/s^2):
g=9.78
//Guage pressure(in kPa):
gp=13550*g*h*10^-3
//Actual pressure:
ap=gp+pa
printf("\n\n RESULT \n\n")
printf("\n\n Actual pressure of air= %f kPa",ap)