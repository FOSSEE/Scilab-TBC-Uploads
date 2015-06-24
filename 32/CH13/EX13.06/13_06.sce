//pathname=get_absolute_file_path('13.06.sce')
//filename=pathname+filesep()+'13.06-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in MPa):
p1=0.7
//Length of diverging nozzle(in m):
l=0.06
//Throat diameter(in mm):
d=0.005
//Pressure at which steam leaves the nozzle(in MPa):
p3=0.1
//From Mollier diagram:
q12=138 //kJ/kg
v2=0.58 //m^3/kg
T=203 //C
q23=247 //kJ/kg
q23a=209.95 //kJ/kg
v3a=1.7 //m^3/kg
//Velocity at throat(in m/s):
C2=sqrt(2*q12*10^3)
//Mass flow rate(in kg/s):
m1=%pi*d^2/4*C2/v2
m2=m1
m3=m1
//Total heat drop(in kJ/kg):
q=q12+q23a
//Velocity at exit(in m/s):
C3=sqrt(2*10^3*q)
//Area at exit(in m^2):
A3=m3*v3a/C3
//Diameter at exit(in mm):
d1=(sqrt(A3*4/%pi))*10^3
a=atan((d1-d*10^3)/(2*60))*180/%pi
printf("\nRESULT\n")
printf("\nWith no losses, temperature at throat = %d C",T)
printf("\nVelocity at throat = %f m/s",C2)
printf("\nWith losses, cone angle = %f",2*a)