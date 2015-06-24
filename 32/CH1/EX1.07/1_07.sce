//pathname=get_absolute_file_path('1.07.sce')
//filename=pathname+filesep()+'1.07-data.sci'
//exec(filename)
//Weight of object at standard gravitational acceleration(in N):
w=100
//Standard acceleration due to gravity(in m/s^2):
g=9.81
//Gravitation acceleration at given location(in m/s^2):
g1=8.5
//Mass of object(in kg):
m=w/g
//Spring balance reading(in N):
s=m*g1
printf("\n\n RESULT \n\n")
printf("\n\n The spring balance reading = %f N \n\n",s)