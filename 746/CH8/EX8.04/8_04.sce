//Viscosity of fluid//
pathname=get_absolute_file_path('8.04.sce')
filename=pathname+filesep()+'8.04-data.sci'
exec(filename)
//Viscosity of the liquid(in N-s/m^2):
u=%pi/128*p*1000*D^4/Q/L/1000
//Velocity(in m/sec)
V=Q/(%pi/4*D^2)/1000
//Reynolds number:
Re=d*V*D/u/1000
printf("\n\nRESULTS\n\n")
printf("\n\nViscosity of fluid %.3f N-s/m^2\n\n",u)
