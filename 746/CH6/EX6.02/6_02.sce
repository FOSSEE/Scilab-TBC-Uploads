//Velocity of flow//
pathname=get_absolute_file_path('06.02.sce')
filename=pathname+filesep()+'06.02-data.sci'
exec(filename)
//Velocity of flow(in m/sec):
V=sqrt(2*dw*g*p/1000*SG/da)
printf("\n\nRESULTS\n\n")
printf("\n\nVelocity of flow: %.3f m/sec\n\n",V)
