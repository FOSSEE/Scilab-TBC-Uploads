//pathname=get_absolute_file_path('1.16.sce')
//filename=pathname+filesep()+'1.16-data.sci'
//exec(filename)
//Diameter of the vessel(in m):
d=1
//Height of the vessel(in m):
h=4
//Volume of the vessel(in m^3):
v=%pi*d^2*h/4
//Initial pressure(in kPa):
p1=100
//Initial temperature(in K):
t1=300
//Final pressure(in kPa):
p2=125
//Cp of hydrogen(in kJ/kg-K):
Cp=14.307
//Cv of volume(in kJ/kg-K):
Cv=10.183
//Final temperature(in K):
t2=p2*t1/p1
//Gas constant for hydrogen:
R=Cp-Cv
//Mass of hydrogen(in kg):
m=p1*v/(R*t1)
//Heat supplied at const. volume(in kJ):
Q=m*Cv*(t2-t1)
printf("\n\n RESULT \n\n")
printf("\n\n Heat to be supplied = %f kJ",Q)