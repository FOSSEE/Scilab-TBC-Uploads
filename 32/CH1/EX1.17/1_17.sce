//pathname=get_absolute_file_path('1.17.sce')
//filename=pathname+filesep()+'1.17-data.sci'
//exec(filename)
//Total volume(in m^3):
v=2+2
//Mass of air in container 1(in kg):
m1=20
//Mass of air in container 2(in kg):
m2=4
//Temperature of the system(in K):
t=300
//Gas constant for air(in J/kg-K):
R=287
//Total mass after the valve is opened(in kg):
m=m1+m2
//Final pressure(in kPa):
p=m*R*t/v*10^-3
printf("\n\n RESULT \n\n")
printf("\n\n Final pressure = %f kPa",p)