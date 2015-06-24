//pathname=get_absolute_file_path('1.08.sce')
//filename=pathname+filesep()+'1.08-data.sci'
//exec(filename)
//Diameter of cylinder(in m):
dia=15*10^-2
//Manometer difference in Hg column(in m):
h=12*10^-2
//Density of mercury(in kg/m^3):
d=13.6*10^3
//Acceleration due to gravity(in m/s^2):
g=9.81
//Weight of piston(in N): pressure*area
w=h*d*g*%pi*dia^2/4
//Mass of the piston(in kg):
m=w/g
printf("\n\n RESULT \n\n")
printf("\n\n Mass of the piston= %f kg",m)