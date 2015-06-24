//temperature//
pathname=get_absolute_file_path('06.08.sce')
filename=pathname+filesep()+'06.08-data.sci'
exec(filename)
//Velocity of flow at exit(in ft/sec):
V4=sqrt(2*g*(z3-0))
//Mass flow rate of water(in slug/sec):
m=d*V4*A4/144
//Rise in temperature between points 1 and 2(in R):
T=Q*3413/3600/m/32.2
printf("\n\nRESULTS\n\n")
printf("\n\nRise in temperature between points 1 and 2: %.3f R\n\n",T)
