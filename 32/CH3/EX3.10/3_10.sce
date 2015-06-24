//pathname=get_absolute_file_path('3.10.sce')
//filename=pathname+filesep()+'3.10-data.sci'
//exec(filename)
//Seating capacity:
c=500
//Heat requirement per person(in kcal/hr):
q=50
//Enthalpy of water entering the pipe(in kcal/kg):
h1=80
//Enthalpy of water leaving the pipe(in kcal/kg):
h2=45
//Difference in elevation of inlet and exit pipe(in m):
z=10
//Acceleration due to gravity(in m/s^2):
g=9.81
//Heat to be supplied(in kcal/hr):
Q=c*q
//Heat lost by water(in kcal/kg):
Ql=-Q
//By SFEE:
//Quantity of water circulated(in kg/hr):
m=(Ql*10^3*4.18)/(g*z+(h2-h1)*10^3*4.18)
printf("\nRESULT\n")
printf("\nWater circulation rate = %f kg/min",m/60)