//pathname=get_absolute_file_path('1.06.sce')
//filename=pathname+filesep()+'1.06-data.sci'
//exec(filename)
//Mass of water(in kg):
m=1
//Altitude(in m):
h=1000
//Specific heat of water(in J/kg-K):
c=4.18*10^3
//Acceleration due to gravity(in m/s^2):
g=9.81
//Heat required for heating = Potential energy 
Q=m*g*h
dT=Q/c
printf("\n\n RESULT \n\n")
printf("\n\n The change in temperature =%f degree celcius ",dT)
