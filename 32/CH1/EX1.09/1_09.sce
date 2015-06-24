//pathname=get_absolute_file_path('1.09.sce')
//filename=pathname+filesep()+'1.09-data.sci'
//exec(filename)
//Height of water column in limb AB(in m):
Hab=2*10^-2
//Height of mercury column in limb CD(in m):
Hcd=10*10^-2
//Barometer reading for atmospheric pressure(in m):
h=76*10^-2
//Density of mercury(in kg/m^3):
dm=13.6*10^3
//Density of water(in kg/m^3):
dw=1000
//Acceleration due to gravity(in m/s^2):
g=9.81
//Atmospheric pressure(in kPa):
Patm=dm*h*g*10^-3
//Pressure of water in column AB(in kPa):
Pab=dw*Hab*g*10^-3
//Pressure of mercury in column CD(in kPa):
Pcd=dm*Hcd*g*10^-3
//Pressure of steam(in kPa):
Ps=Patm+Pcd-Pab
printf("\n\n RESULT \n\n")
printf("\n\n Pressure of steam = %f kPa",Ps)