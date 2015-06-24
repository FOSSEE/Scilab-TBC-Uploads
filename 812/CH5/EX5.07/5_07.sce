//angular and rotation//
pathname=get_absolute_file_path('5.07.sce')
filename=pathname+filesep()+'5.07-data.sci'
exec(filename)
//At point b, u=3 mm/sec
u=3;
//Displacemet of b(in mm):
xb=u*t
//Rate of angular deformation(in s^-1):
def=U/h
//Rate of rotation(in s^-1):
rot=-0.5*U/h
printf("\n\nRSULTS\n\n")
printf("\n\nRate of angular deformation: %.1f /sec\n\n",def)
printf("\n\nRate of rotation: %.1f /sec\n\n",rot)
