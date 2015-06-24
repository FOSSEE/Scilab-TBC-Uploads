//pathname=get_absolute_file_path('1.15.sce')
//filename=pathname+filesep()+'1.15-data.sci'
//exec(filename)
//Initial pressure(in kPa):
p1=100
//Initial temperature(in K):
t1=300
//Initial volume(in m^3):
v1=5
//Final pressure(in kPa):
p2=50
//Final temperature(in K):
t2=280
//Final volume(in m^3):
v2=5
//Gas constant for air(in J/kg-K):
R=287//Initial pressure(in kPa):
p1=100
//Initial temperature(in K):
t1=300
//Initial volume(in m^3):
v1=5
//Final pressure(in kPa):
p2=50
//Final temperature(in K):
t2=280
//Final volume(in m^3):
v2=5
//Gas constant for air(in J/kg-K):
R=287
//Initial mass(in kg):
m1=p1*v1/(R*t1)*10^3
//Final mass(in kg):
m2=p2*v2/(R*t2)*10^3
//Mass removed(in kg):
dm=m1-m2
//Volume of this mass of air at initial states(in m^3):
V=dm*R*t1/p1
printf("\n\n RESULT \n\n")
printf("\n\n Mass of air removed = %f kg",dm)
printf("\n Volume of air at initial states = %f m^3\n\n",V)