//pressure difference//
pathname=get_absolute_file_path('3.03.sce')
filename=pathname+filesep()+'3.03-data.sci'
exec(filename)
//Pressure difference(in lbf/in^2):
dp=g*d*(-d1+SGm*d2-SGo*d3+SGm*d4+d5)/12/144
printf("\n\nRESULTS\n\n")
printf("\n\nPressure difference between A and B: %f lbf/in^2\n\n",dp)
