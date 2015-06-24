//pathname=get_absolute_file_path('13.05.sce')
//filename=pathname+filesep()+'13.05-data.sci'
//exec(filename)
//Power of turbine(in MW):
P=1
//Pressure of steam entering(in bar):
p1=20
//Steam consumption rate(in kg/kW.h):
m=8
//Pressure at which steam leaves(in bar):
p3=0.2
//Throat diameter(in m):
d=0.01
//From Mollier diagram:
q12=142 //kJ/kg
v2=0.20 //m^3/kg
q13=807 //kJ/kg
v3=7.2 //m^3/kg
//Velocity at throat(in m/s):
C2=sqrt(2*q12*10^3)
//Mass flow rate:
m2=%pi*d^2/4*C2/v2
m3=m2
//Number of nozzles:
n=10^3*m/(3600*m2)
//Useful heat drop:
q13a=0.90*q13
//Velocity at exit(in m/s):
C3=sqrt(2*10^3*q13a)
//Area at exit(in m^2):
A3=m3*v3/C3
printf("\nRESULT\n")
printf("\nNumber of nozzles required = %d",n+1)
printf("\nArea at exit = %f cm^2",A3*10^4)