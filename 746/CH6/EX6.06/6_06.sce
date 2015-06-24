//pressure//
pathname=get_absolute_file_path('06.06.sce')
filename=pathname+filesep()+'06.06-data.sci'
exec(filename)
//Pressure of air at 1000 m(in N/m^2):
p=P1*pa
//Density of air at 1000m(in kg/m^3):
d=D1*da
//Stagnation pressure at A(in kPa):
p0A=p+0.5*d*(V*1000/3600)^2
//Static pressure at B(in kPa):
pB=p+d/2*((V*1000/3600)^2-Vb^2)
printf("\n\nRESULTS\n\n")
printf("\n\nStagnation pressure at A: %.3f kPa\n\n",p0A/1000)
printf("\n\nStatic pressure at B: %.3f kPa\n\n",pB/1000)

