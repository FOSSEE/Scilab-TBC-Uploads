//pathname=get_absolute_file_path('1.02.sce')
//filename=pathname+filesep()+'1.02-data.sci'
//exec(filename)
//Diameter of the vessel(in m):
d=30*10^-2
//Accelertion due to gravity(in m/s^2):
g=9.78
//Atmospheric pressure(in Pa):
p=76*(10^-2)*13550*g
//Area:
a=(%pi*d^2)/4
//Effort required:
F=p*a
printf("\n\n RESULT \n\n")
printf("\n\n Effort required= %f N",F)