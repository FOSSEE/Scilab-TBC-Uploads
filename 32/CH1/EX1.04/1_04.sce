//pathname=get_absolute_file_path('1.04.sce')
//filename=pathname+filesep()+'1.04-data.sci'
//exec(filename)
//Depth of tank(in m):
h=1
//Specific gravity:
s=0.8
//Density of water(in kg/m^3):
d=1000
//Acceleration due to gravity(in m/s^2):
g=9.81
//Density of oil(in kg/m3):
dO=s*d
//Gauge pressure(in kPa):
gp=dO*g*h*10^-3
printf("\n\n RESULT \n\n")
printf("\n\n Gauge pressure=%f kPa\n\n",gp)