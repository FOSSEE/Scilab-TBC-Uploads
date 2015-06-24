//pathname=get_absolute_file_path('1.12.sce')
//filename=pathname+filesep()+'1.12-data.sci'
//exec(filename)
//Velocity of the object(in m/s):
v=750
//Gravitational force acting on the body(in N):
F=4000
//Acceleration due to gravity(in m/s^2):
g=8
//Mass of the object(in kg):
m=F/g
//Kinetic energy of the body(in J):
KE=1/2*m*v^2
printf("\n\n RESULT \n\n")
printf("\n\n Kinetic energy = %f J \n\n",KE)